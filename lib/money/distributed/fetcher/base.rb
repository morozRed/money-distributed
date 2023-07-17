# typed: true
# frozen_string_literal: true

class Money
  module Distributed
    module Fetcher
      # Base class for rates fetchers
      module Base
        def initialize(bank = nil)
          @bank = bank || Money.default_bank
        end

        def fetch
          rates = exchange_rates
          currencies = rates.keys

          currencies.each { |cur| add_rate(cur, cur, 1) }

          currencies.combination(2).each do |curr_1, curr_2|
            rate = rates[curr_2] / rates[curr_1]
            add_rate(curr_1, curr_2, rate)
          end
        end

        private def add_rate(from_iso, to_iso, rate)
          @bank.add_rate(from_iso, to_iso, rate.round(4))
          return if from_iso == to_iso

          @bank.add_rate(to_iso, from_iso, (1 / rate).round(4))
        end

        private def exchange_rates
          raise NotImplementedError
        end
      end
    end
  end
end
