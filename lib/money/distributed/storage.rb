# typed: true
# frozen_string_literal: true

class Money
  module Distributed
    # Storage for `Money::Bank::VariableExchange` that stores rates in Redis
    class Storage
      INDEX_KEY_SEPARATOR = '_TO_'
      REDIS_KEY = 'money_rates'

      def initialize(redis, cache_ttl = nil)
        @redis = Money::Distributed::Redis.new(redis)

        @cache = {}
        @cache_ttl = cache_ttl
        @cache_updated_at = nil

        @lock = Concurrent::ReentrantReadWriteLock.new
      end

      def add_rate(iso_from, iso_to, rate)
        @redis.exec do |r|
          r.hset(REDIS_KEY, key_for(iso_from, iso_to), rate)
        end
        clear_cache
      end

      def get_rate(iso_from, iso_to)
        cached_rates[key_for(iso_from, iso_to)]
      end

      def each_rate(&block)
        enum = Enumerator.new do |yielder|
          cached_rates.each do |key, rate|
            iso_from, iso_to = key.split(INDEX_KEY_SEPARATOR)
            yielder.yield iso_from, iso_to, rate
          end
        end

        block ? enum.each(&block) : enum
      end

      def transaction
        # We don't need transactions, we all thread safe here
        yield
      end

      def marshal_dump
        [self.class, @cache_ttl]
      end

      private def key_for(iso_from, iso_to)
        [iso_from, iso_to].join(INDEX_KEY_SEPARATOR).upcase
      end

      def cached_rates
        Money::Distributed::ReadWriteLock.read(@lock) do
          retrieve_rates if @cache.empty? || cache_outdated?
          @cache
        end
      end

      private def cache_outdated?
        return false unless @cache_ttl

        @cache_updated_at.nil? ||
        @cache_updated_at < Time.now - @cache_ttl
      end

      def clear_cache
        Money::Distributed::ReadWriteLock.write(@lock) do
          @cache.clear
        end
      end


      private def retrieve_rates
        updated_cache = {}

        @redis.exec do |r|
          r.hgetall(REDIS_KEY).each_with_object(updated_cache) do |(key, val), h|
            next if val.nil? || val == ''

            h[key] = BigDecimal(val)
          end
        end

        Money::Distributed::ReadWriteLock.write(@lock) do
          @cache = updated_cache
          @cache_updated_at = Time.now
        end
      end
    end
  end
end
