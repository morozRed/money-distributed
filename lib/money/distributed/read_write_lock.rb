# frozen_string_literal: true

require 'concurrent-ruby'

class Money
  module Distributed
    # ReadWriteLock for `Money::Distributed::Storage` that ensures thread safety
    class ReadWriteLock
      def self.read(lock, &_)
        lock.acquire_read_lock
        begin
          yield
        ensure
          lock.release_read_lock
          nil
        end
      end

      def self.write(lock, &_)
        lock.acquire_write_lock
        begin
          yield
        ensure
          lock.release_write_lock
        end
      end
    end
  end
end
