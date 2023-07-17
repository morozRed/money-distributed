# typed: true

# DO NOT EDIT MANUALLY
# This is an autogenerated file for types exported from the `redis-client` gem.
# Please instead update this file by running `bin/tapioca gem redis-client`.

module Process
  extend ::RedisClient::PIDCache::CoreExt
  extend ::ConnectionPool::ForkTracker
end

# source://redis-client//lib/redis_client/version.rb#3
class RedisClient
  include ::RedisClient::Common

  # @return [RedisClient] a new instance of RedisClient
  #
  # source://redis-client//lib/redis_client.rb#165
  def initialize(config, **_arg1); end

  # source://redis-client//lib/redis_client.rb#267
  def blocking_call(timeout, *command, **kwargs); end

  # source://redis-client//lib/redis_client.rb#287
  def blocking_call_v(timeout, command); end

  # source://redis-client//lib/redis_client.rb#207
  def call(*command, **kwargs); end

  # source://redis-client//lib/redis_client.rb#237
  def call_once(*command, **kwargs); end

  # source://redis-client//lib/redis_client.rb#252
  def call_once_v(command); end

  # source://redis-client//lib/redis_client.rb#222
  def call_v(command); end

  # source://redis-client//lib/redis_client.rb#347
  def close; end

  # @return [Boolean]
  #
  # source://redis-client//lib/redis_client.rb#343
  def connected?; end

  # source://redis-client//lib/redis_client.rb#325
  def hscan(key, *args, **kwargs, &block); end

  # source://redis-client//lib/redis_client.rb#172
  def inspect; end

  # source://redis-client//lib/redis_client.rb#370
  def multi(watch: T.unsafe(nil), &block); end

  # @yield [pipeline]
  #
  # source://redis-client//lib/redis_client.rb#352
  def pipelined; end

  # source://redis-client//lib/redis_client.rb#201
  def pubsub; end

  # source://redis-client//lib/redis_client.rb#191
  def read_timeout=(timeout); end

  # source://redis-client//lib/redis_client.rb#307
  def scan(*args, **kwargs, &block); end

  # source://redis-client//lib/redis_client.rb#177
  def size; end

  # source://redis-client//lib/redis_client.rb#316
  def sscan(key, *args, **kwargs, &block); end

  # @yield [_self]
  # @yieldparam _self [RedisClient] the object that the method was called on
  #
  # source://redis-client//lib/redis_client.rb#181
  def then(_options = T.unsafe(nil)); end

  # source://redis-client//lib/redis_client.rb#186
  def timeout=(timeout); end

  # @yield [_self]
  # @yieldparam _self [RedisClient] the object that the method was called on
  #
  # source://redis-client//lib/redis_client.rb#181
  def with(_options = T.unsafe(nil)); end

  # source://redis-client//lib/redis_client.rb#196
  def write_timeout=(timeout); end

  # source://redis-client//lib/redis_client.rb#334
  def zscan(key, *args, **kwargs, &block); end

  private

  # @yield [transaction]
  #
  # source://redis-client//lib/redis_client.rb#577
  def build_transaction; end

  # source://redis-client//lib/redis_client.rb#662
  def connect; end

  # source://redis-client//lib/redis_client.rb#611
  def ensure_connected(retryable: T.unsafe(nil)); end

  # source://redis-client//lib/redis_client.rb#655
  def raw_connection; end

  # source://redis-client//lib/redis_client.rb#585
  def scan_list(cursor_index, command, &block); end

  # source://redis-client//lib/redis_client.rb#595
  def scan_pairs(cursor_index, command); end

  class << self
    # source://redis-client//lib/redis_client.rb#142
    def config(**kwargs); end

    # source://redis-client//lib/redis_client.rb#32
    def default_driver; end

    # source://redis-client//lib/redis_client.rb#44
    def default_driver=(name); end

    # source://redis-client//lib/redis_client.rb#21
    def driver(name); end

    # source://redis-client//lib/redis_client.rb#150
    def new(arg = T.unsafe(nil), **kwargs); end

    # source://redis-client//lib/redis_client.rb#158
    def register(middleware); end

    # source://redis-client//lib/redis_client.rb#17
    def register_driver(name, &block); end

    # source://redis-client//lib/redis_client.rb#146
    def sentinel(**kwargs); end
  end
end

# source://redis-client//lib/redis_client.rb#121
class RedisClient::AuthenticationError < ::RedisClient::CommandError; end

# source://redis-client//lib/redis_client/middlewares.rb#4
class RedisClient::BasicMiddleware
  # @return [BasicMiddleware] a new instance of BasicMiddleware
  #
  # source://redis-client//lib/redis_client/middlewares.rb#7
  def initialize(client); end

  # @yield [command]
  #
  # source://redis-client//lib/redis_client/middlewares.rb#15
  def call(command, _config); end

  # @yield [command]
  #
  # source://redis-client//lib/redis_client/middlewares.rb#15
  def call_pipelined(command, _config); end

  # Returns the value of attribute client.
  #
  # source://redis-client//lib/redis_client/middlewares.rb#5
  def client; end

  # source://redis-client//lib/redis_client/middlewares.rb#11
  def connect(_config); end
end

# source://redis-client//lib/redis_client.rb#85
class RedisClient::CannotConnectError < ::RedisClient::ConnectionError; end

# source://redis-client//lib/redis_client.rb#92
class RedisClient::CheckoutTimeoutError < ::RedisClient::TimeoutError; end

# source://redis-client//lib/redis_client/circuit_breaker.rb#4
class RedisClient::CircuitBreaker
  # @return [CircuitBreaker] a new instance of CircuitBreaker
  #
  # source://redis-client//lib/redis_client/circuit_breaker.rb#23
  def initialize(error_threshold:, error_timeout:, error_threshold_timeout: T.unsafe(nil), success_threshold: T.unsafe(nil)); end

  # Returns the value of attribute error_threshold.
  #
  # source://redis-client//lib/redis_client/circuit_breaker.rb#21
  def error_threshold; end

  # Returns the value of attribute error_threshold_timeout.
  #
  # source://redis-client//lib/redis_client/circuit_breaker.rb#21
  def error_threshold_timeout; end

  # Returns the value of attribute error_timeout.
  #
  # source://redis-client//lib/redis_client/circuit_breaker.rb#21
  def error_timeout; end

  # source://redis-client//lib/redis_client/circuit_breaker.rb#34
  def protect; end

  # Returns the value of attribute success_threshold.
  #
  # source://redis-client//lib/redis_client/circuit_breaker.rb#21
  def success_threshold; end

  private

  # source://redis-client//lib/redis_client/circuit_breaker.rb#80
  def record_error; end

  # source://redis-client//lib/redis_client/circuit_breaker.rb#95
  def record_success; end

  # source://redis-client//lib/redis_client/circuit_breaker.rb#65
  def refresh_state; end
end

# source://redis-client//lib/redis_client/circuit_breaker.rb#5
module RedisClient::CircuitBreaker::Middleware
  # source://redis-client//lib/redis_client/circuit_breaker.rb#10
  def call(_command, config); end

  # source://redis-client//lib/redis_client/circuit_breaker.rb#14
  def call_pipelined(_commands, config); end

  # source://redis-client//lib/redis_client/circuit_breaker.rb#6
  def connect(config); end
end

# source://redis-client//lib/redis_client/circuit_breaker.rb#19
class RedisClient::CircuitBreaker::OpenCircuitError < ::RedisClient::CannotConnectError; end

# source://redis-client//lib/redis_client/command_builder.rb#4
module RedisClient::CommandBuilder
  extend ::RedisClient::CommandBuilder

  # source://redis-client//lib/redis_client/command_builder.rb#8
  def generate(args, kwargs = T.unsafe(nil)); end
end

# source://redis-client//lib/redis_client.rb#102
class RedisClient::CommandError < ::RedisClient::Error
  include ::RedisClient::HasCommand

  class << self
    # source://redis-client//lib/redis_client.rb#106
    def parse(error_message); end
  end
end

# source://redis-client//lib/redis_client.rb#132
RedisClient::CommandError::ERRORS = T.let(T.unsafe(nil), Hash)

# source://redis-client//lib/redis_client.rb#54
module RedisClient::Common
  # source://redis-client//lib/redis_client.rb#58
  def initialize(config, id: T.unsafe(nil), connect_timeout: T.unsafe(nil), read_timeout: T.unsafe(nil), write_timeout: T.unsafe(nil)); end

  # Returns the value of attribute config.
  #
  # source://redis-client//lib/redis_client.rb#55
  def config; end

  # Returns the value of attribute connect_timeout.
  #
  # source://redis-client//lib/redis_client.rb#56
  def connect_timeout; end

  # Sets the attribute connect_timeout
  #
  # @param value the value to set the attribute connect_timeout to.
  #
  # source://redis-client//lib/redis_client.rb#56
  def connect_timeout=(_arg0); end

  # Returns the value of attribute id.
  #
  # source://redis-client//lib/redis_client.rb#55
  def id; end

  # Returns the value of attribute read_timeout.
  #
  # source://redis-client//lib/redis_client.rb#56
  def read_timeout; end

  # Sets the attribute read_timeout
  #
  # @param value the value to set the attribute read_timeout to.
  #
  # source://redis-client//lib/redis_client.rb#56
  def read_timeout=(_arg0); end

  # source://redis-client//lib/redis_client.rb#74
  def timeout=(timeout); end

  # Returns the value of attribute write_timeout.
  #
  # source://redis-client//lib/redis_client.rb#56
  def write_timeout; end

  # Sets the attribute write_timeout
  #
  # @param value the value to set the attribute write_timeout to.
  #
  # source://redis-client//lib/redis_client.rb#56
  def write_timeout=(_arg0); end
end

# source://redis-client//lib/redis_client/config.rb#7
class RedisClient::Config
  include ::RedisClient::Config::Common

  # @return [Config] a new instance of Config
  #
  # source://redis-client//lib/redis_client/config.rb#157
  def initialize(url: T.unsafe(nil), host: T.unsafe(nil), port: T.unsafe(nil), path: T.unsafe(nil), **kwargs); end

  # Returns the value of attribute host.
  #
  # source://redis-client//lib/redis_client/config.rb#155
  def host; end

  # Returns the value of attribute path.
  #
  # source://redis-client//lib/redis_client/config.rb#155
  def path; end

  # Returns the value of attribute port.
  #
  # source://redis-client//lib/redis_client/config.rb#155
  def port; end
end

# source://redis-client//lib/redis_client/config.rb#14
module RedisClient::Config::Common
  # source://redis-client//lib/redis_client/config.rb#21
  def initialize(username: T.unsafe(nil), password: T.unsafe(nil), db: T.unsafe(nil), id: T.unsafe(nil), timeout: T.unsafe(nil), read_timeout: T.unsafe(nil), write_timeout: T.unsafe(nil), connect_timeout: T.unsafe(nil), ssl: T.unsafe(nil), custom: T.unsafe(nil), ssl_params: T.unsafe(nil), driver: T.unsafe(nil), protocol: T.unsafe(nil), client_implementation: T.unsafe(nil), command_builder: T.unsafe(nil), inherit_socket: T.unsafe(nil), reconnect_attempts: T.unsafe(nil), middlewares: T.unsafe(nil), circuit_breaker: T.unsafe(nil)); end

  # Returns the value of attribute circuit_breaker.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def circuit_breaker; end

  # Returns the value of attribute command_builder.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def command_builder; end

  # Returns the value of attribute connect_timeout.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def connect_timeout; end

  # Returns the value of attribute connection_prelude.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def connection_prelude; end

  # Returns the value of attribute custom.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def custom; end

  # Returns the value of attribute db.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def db; end

  # Returns the value of attribute driver.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def driver; end

  # Returns the value of attribute id.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def id; end

  # Returns the value of attribute inherit_socket.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def inherit_socket; end

  # Returns the value of attribute middlewares_stack.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def middlewares_stack; end

  # source://redis-client//lib/redis_client/config.rb#98
  def new_client(**kwargs); end

  # source://redis-client//lib/redis_client/config.rb#93
  def new_pool(**kwargs); end

  # Returns the value of attribute password.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def password; end

  # Returns the value of attribute protocol.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def protocol; end

  # Returns the value of attribute read_timeout.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def read_timeout; end

  # @return [Boolean]
  #
  # source://redis-client//lib/redis_client/config.rb#102
  def retry_connecting?(attempt, _error); end

  # @return [Boolean]
  #
  # source://redis-client//lib/redis_client/config.rb#89
  def sentinel?; end

  # source://redis-client//lib/redis_client/config.rb#120
  def server_url; end

  # Returns the value of attribute ssl.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def ssl; end

  # Returns the value of attribute ssl.
  def ssl?; end

  # source://redis-client//lib/redis_client/config.rb#114
  def ssl_context; end

  # Returns the value of attribute ssl_params.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def ssl_params; end

  # source://redis-client//lib/redis_client/config.rb#85
  def username; end

  # Returns the value of attribute write_timeout.
  #
  # source://redis-client//lib/redis_client/config.rb#15
  def write_timeout; end

  private

  # source://redis-client//lib/redis_client/config.rb#130
  def build_connection_prelude; end
end

# source://redis-client//lib/redis_client/config.rb#12
RedisClient::Config::DEFAULT_DB = T.let(T.unsafe(nil), Integer)

# source://redis-client//lib/redis_client/config.rb#9
RedisClient::Config::DEFAULT_HOST = T.let(T.unsafe(nil), String)

# source://redis-client//lib/redis_client/config.rb#10
RedisClient::Config::DEFAULT_PORT = T.let(T.unsafe(nil), Integer)

# source://redis-client//lib/redis_client/config.rb#8
RedisClient::Config::DEFAULT_TIMEOUT = T.let(T.unsafe(nil), Float)

# source://redis-client//lib/redis_client/config.rb#11
RedisClient::Config::DEFAULT_USERNAME = T.let(T.unsafe(nil), String)

# source://redis-client//lib/redis_client.rb#84
class RedisClient::ConnectionError < ::RedisClient::Error; end

# source://redis-client//lib/redis_client/connection_mixin.rb#4
module RedisClient::ConnectionMixin
  # source://redis-client//lib/redis_client/connection_mixin.rb#5
  def initialize; end

  # source://redis-client//lib/redis_client/connection_mixin.rb#28
  def call(command, timeout); end

  # source://redis-client//lib/redis_client/connection_mixin.rb#41
  def call_pipelined(commands, timeouts); end

  # source://redis-client//lib/redis_client/connection_mixin.rb#14
  def close; end

  # source://redis-client//lib/redis_client/connection_mixin.rb#9
  def reconnect; end

  # source://redis-client//lib/redis_client/connection_mixin.rb#19
  def revalidate; end
end

# source://redis-client//lib/redis_client.rb#79
class RedisClient::Error < ::StandardError; end

# source://redis-client//lib/redis_client.rb#87
class RedisClient::FailoverError < ::RedisClient::ConnectionError; end

# source://redis-client//lib/redis_client.rb#94
module RedisClient::HasCommand
  # source://redis-client//lib/redis_client.rb#97
  def _set_command(command); end

  # Returns the value of attribute command.
  #
  # source://redis-client//lib/redis_client.rb#95
  def command; end
end

# source://redis-client//lib/redis_client.rb#129
class RedisClient::MasterDownError < ::RedisClient::ConnectionError
  include ::RedisClient::HasCommand
end

# source://redis-client//lib/redis_client/middlewares.rb#21
class RedisClient::Middlewares < ::RedisClient::BasicMiddleware; end

# source://redis-client//lib/redis_client.rb#451
class RedisClient::Multi
  # @return [Multi] a new instance of Multi
  #
  # source://redis-client//lib/redis_client.rb#452
  def initialize(command_builder); end

  # source://redis-client//lib/redis_client.rb#494
  def _blocks; end

  # source://redis-client//lib/redis_client.rb#514
  def _coerce!(results); end

  # source://redis-client//lib/redis_client.rb#490
  def _commands; end

  # @return [Boolean]
  #
  # source://redis-client//lib/redis_client.rb#502
  def _empty?; end

  # @return [Boolean]
  #
  # source://redis-client//lib/redis_client.rb#510
  def _retryable?; end

  # source://redis-client//lib/redis_client.rb#498
  def _size; end

  # source://redis-client//lib/redis_client.rb#506
  def _timeouts; end

  # source://redis-client//lib/redis_client.rb#460
  def call(*command, **kwargs, &block); end

  # source://redis-client//lib/redis_client.rb#474
  def call_once(*command, **kwargs, &block); end

  # source://redis-client//lib/redis_client.rb#482
  def call_once_v(command, &block); end

  # source://redis-client//lib/redis_client.rb#467
  def call_v(command, &block); end
end

# source://redis-client//lib/redis_client.rb#124
class RedisClient::OutOfMemoryError < ::RedisClient::CommandError; end

# source://redis-client//lib/redis_client/pid_cache.rb#4
module RedisClient::PIDCache
  class << self
    # Returns the value of attribute pid.
    #
    # source://redis-client//lib/redis_client/pid_cache.rb#10
    def pid; end

    # source://redis-client//lib/redis_client/pid_cache.rb#12
    def update!; end
  end
end

# source://redis-client//lib/redis_client/pid_cache.rb#18
module RedisClient::PIDCache::CoreExt
  # source://redis-client//lib/redis_client/pid_cache.rb#19
  def _fork; end
end

# source://redis-client//lib/redis_client.rb#122
class RedisClient::PermissionError < ::RedisClient::CommandError; end

# source://redis-client//lib/redis_client.rb#530
class RedisClient::Pipeline < ::RedisClient::Multi
  # @return [Pipeline] a new instance of Pipeline
  #
  # source://redis-client//lib/redis_client.rb#531
  def initialize(_command_builder); end

  # source://redis-client//lib/redis_client.rb#562
  def _coerce!(results); end

  # @return [Boolean]
  #
  # source://redis-client//lib/redis_client.rb#558
  def _empty?; end

  # source://redis-client//lib/redis_client.rb#554
  def _timeouts; end

  # source://redis-client//lib/redis_client.rb#536
  def blocking_call(timeout, *command, **kwargs, &block); end

  # source://redis-client//lib/redis_client.rb#545
  def blocking_call_v(timeout, command, &block); end
end

# source://redis-client//lib/redis_client/pooled.rb#6
class RedisClient::Pooled
  include ::RedisClient::Common

  # @return [Pooled] a new instance of Pooled
  #
  # source://redis-client//lib/redis_client/pooled.rb#11
  def initialize(config, id: T.unsafe(nil), connect_timeout: T.unsafe(nil), read_timeout: T.unsafe(nil), write_timeout: T.unsafe(nil), **kwargs); end

  # source://redis-client//lib/redis_client/pooled.rb#56
  def blocking_call(*args, **_arg1, &block); end

  # source://redis-client//lib/redis_client/pooled.rb#56
  def blocking_call_v(*args, **_arg1, &block); end

  # source://redis-client//lib/redis_client/pooled.rb#56
  def call(*args, **_arg1, &block); end

  # source://redis-client//lib/redis_client/pooled.rb#56
  def call_once(*args, **_arg1, &block); end

  # source://redis-client//lib/redis_client/pooled.rb#56
  def call_once_v(*args, **_arg1, &block); end

  # source://redis-client//lib/redis_client/pooled.rb#56
  def call_v(*args, **_arg1, &block); end

  # source://redis-client//lib/redis_client/pooled.rb#37
  def close; end

  # source://redis-client//lib/redis_client/pooled.rb#65
  def hscan(*args, **_arg1, &block); end

  # source://redis-client//lib/redis_client/pooled.rb#56
  def multi(*args, **_arg1, &block); end

  # source://redis-client//lib/redis_client/pooled.rb#56
  def pipelined(*args, **_arg1, &block); end

  # source://redis-client//lib/redis_client/pooled.rb#56
  def pubsub(*args, **_arg1, &block); end

  # source://redis-client//lib/redis_client/pooled.rb#65
  def scan(*args, **_arg1, &block); end

  # source://redis-client//lib/redis_client/pooled.rb#48
  def size; end

  # source://redis-client//lib/redis_client/pooled.rb#65
  def sscan(*args, **_arg1, &block); end

  # source://redis-client//lib/redis_client/pooled.rb#25
  def then(options = T.unsafe(nil)); end

  # source://redis-client//lib/redis_client/pooled.rb#25
  def with(options = T.unsafe(nil)); end

  # source://redis-client//lib/redis_client/pooled.rb#65
  def zscan(*args, **_arg1, &block); end

  private

  # source://redis-client//lib/redis_client/pooled.rb#82
  def new_pool; end

  # source://redis-client//lib/redis_client/pooled.rb#78
  def pool; end
end

# source://redis-client//lib/redis_client/pooled.rb#7
RedisClient::Pooled::EMPTY_HASH = T.let(T.unsafe(nil), Hash)

# source://redis-client//lib/redis_client.rb#81
class RedisClient::ProtocolError < ::RedisClient::Error; end

# source://redis-client//lib/redis_client.rb#414
class RedisClient::PubSub
  # @return [PubSub] a new instance of PubSub
  #
  # source://redis-client//lib/redis_client.rb#415
  def initialize(raw_connection, command_builder); end

  # source://redis-client//lib/redis_client.rb#420
  def call(*command, **kwargs); end

  # source://redis-client//lib/redis_client.rb#425
  def call_v(command); end

  # source://redis-client//lib/redis_client.rb#430
  def close; end

  # source://redis-client//lib/redis_client.rb#436
  def next_event(timeout = T.unsafe(nil)); end

  private

  # Returns the value of attribute raw_connection.
  #
  # source://redis-client//lib/redis_client.rb#448
  def raw_connection; end
end

# source://redis-client//lib/redis_client/ruby_connection/resp3.rb#4
module RedisClient::RESP3
  private

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#36
  def dump(command, buffer = T.unsafe(nil)); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#57
  def dump_any(object, buffer); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#68
  def dump_array(array, buffer); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#84
  def dump_hash(hash, buffer); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#93
  def dump_numeric(numeric, buffer); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#76
  def dump_set(set, buffer); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#97
  def dump_string(string, buffer); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#103
  def dump_symbol(symbol, buffer); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#49
  def load(io); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#53
  def new_buffer; end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#112
  def parse(io); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#142
  def parse_array(io); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#192
  def parse_blob(io); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#131
  def parse_boolean(io); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#176
  def parse_double(io); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#127
  def parse_error(io); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#172
  def parse_integer(io); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#150
  def parse_map(io); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#187
  def parse_null(io); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#158
  def parse_push(io); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#162
  def parse_sequence(io, size); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#146
  def parse_set(io); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#120
  def parse_string(io); end

  # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#202
  def parse_verbatim_string(io); end

  class << self
    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#36
    def dump(command, buffer = T.unsafe(nil)); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#57
    def dump_any(object, buffer); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#68
    def dump_array(array, buffer); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#84
    def dump_hash(hash, buffer); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#93
    def dump_numeric(numeric, buffer); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#76
    def dump_set(set, buffer); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#97
    def dump_string(string, buffer); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#103
    def dump_symbol(symbol, buffer); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#49
    def load(io); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#53
    def new_buffer; end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#112
    def parse(io); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#142
    def parse_array(io); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#192
    def parse_blob(io); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#131
    def parse_boolean(io); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#176
    def parse_double(io); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#127
    def parse_error(io); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#172
    def parse_integer(io); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#150
    def parse_map(io); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#187
    def parse_null(io); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#158
    def parse_push(io); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#162
    def parse_sequence(io, size); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#146
    def parse_set(io); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#120
    def parse_string(io); end

    # source://redis-client//lib/redis_client/ruby_connection/resp3.rb#202
    def parse_verbatim_string(io); end
  end
end

# source://redis-client//lib/redis_client/ruby_connection/resp3.rb#13
RedisClient::RESP3::DUMP_TYPES = T.let(T.unsafe(nil), Hash)

# source://redis-client//lib/redis_client/ruby_connection/resp3.rb#11
RedisClient::RESP3::EOL = T.let(T.unsafe(nil), String)

# source://redis-client//lib/redis_client/ruby_connection/resp3.rb#12
RedisClient::RESP3::EOL_SIZE = T.let(T.unsafe(nil), Integer)

# source://redis-client//lib/redis_client/ruby_connection/resp3.rb#7
class RedisClient::RESP3::Error < ::RedisClient::Error; end

# source://redis-client//lib/redis_client/ruby_connection/resp3.rb#34
RedisClient::RESP3::INTEGER_RANGE = T.let(T.unsafe(nil), Range)

# source://redis-client//lib/redis_client/ruby_connection/resp3.rb#19
RedisClient::RESP3::PARSER_TYPES = T.let(T.unsafe(nil), Hash)

# source://redis-client//lib/redis_client/ruby_connection/resp3.rb#9
class RedisClient::RESP3::SyntaxError < ::RedisClient::RESP3::Error; end

# source://redis-client//lib/redis_client/ruby_connection/resp3.rb#8
class RedisClient::RESP3::UnknownType < ::RedisClient::RESP3::Error; end

# source://redis-client//lib/redis_client.rb#126
class RedisClient::ReadOnlyError < ::RedisClient::ConnectionError
  include ::RedisClient::HasCommand
end

# source://redis-client//lib/redis_client.rb#90
class RedisClient::ReadTimeoutError < ::RedisClient::TimeoutError; end

# source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#6
class RedisClient::RubyConnection
  include ::RedisClient::ConnectionMixin

  # @return [RubyConnection] a new instance of RubyConnection
  #
  # source://redis-client//lib/redis_client/ruby_connection.rb#43
  def initialize(config, connect_timeout:, read_timeout:, write_timeout:); end

  # source://redis-client//lib/redis_client/ruby_connection.rb#56
  def close; end

  # @return [Boolean]
  #
  # source://redis-client//lib/redis_client/ruby_connection.rb#52
  def connected?; end

  # source://redis-client//lib/redis_client/ruby_connection.rb#92
  def read(timeout = T.unsafe(nil)); end

  # source://redis-client//lib/redis_client/ruby_connection.rb#61
  def read_timeout=(timeout); end

  # source://redis-client//lib/redis_client/ruby_connection.rb#71
  def write(command); end

  # source://redis-client//lib/redis_client/ruby_connection.rb#80
  def write_multi(commands); end

  # source://redis-client//lib/redis_client/ruby_connection.rb#66
  def write_timeout=(timeout); end

  private

  # source://redis-client//lib/redis_client/ruby_connection.rb#106
  def connect; end

  # unknown
  #
  # source://redis-client//lib/redis_client/ruby_connection.rb#163
  def enable_socket_keep_alive(socket); end

  class << self
    # source://redis-client//lib/redis_client/ruby_connection.rb#14
    def ssl_context(ssl_params); end
  end
end

# source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#7
class RedisClient::RubyConnection::BufferedIO
  # @return [BufferedIO] a new instance of BufferedIO
  #
  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#13
  def initialize(io, read_timeout:, write_timeout:, chunk_size: T.unsafe(nil)); end

  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#23
  def close; end

  # @return [Boolean]
  #
  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#27
  def closed?; end

  # @return [Boolean]
  #
  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#31
  def eof?; end

  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#84
  def getbyte; end

  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#91
  def gets_chomp; end

  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#102
  def read_chomp(bytes); end

  # Returns the value of attribute read_timeout.
  #
  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#11
  def read_timeout; end

  # Sets the attribute read_timeout
  #
  # @param value the value to set the attribute read_timeout to.
  #
  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#11
  def read_timeout=(_arg0); end

  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#55
  def skip(offset); end

  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#35
  def with_timeout(new_timeout); end

  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#61
  def write(string); end

  # Returns the value of attribute write_timeout.
  #
  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#11
  def write_timeout; end

  # Sets the attribute write_timeout
  #
  # @param value the value to set the attribute write_timeout to.
  #
  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#11
  def write_timeout=(_arg0); end

  private

  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#111
  def ensure_remaining(bytes); end

  # source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#118
  def fill_buffer(strict, size = T.unsafe(nil)); end
end

# source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#8
RedisClient::RubyConnection::BufferedIO::EOL = T.let(T.unsafe(nil), String)

# source://redis-client//lib/redis_client/ruby_connection/buffered_io.rb#9
RedisClient::RubyConnection::BufferedIO::EOL_SIZE = T.let(T.unsafe(nil), Integer)

# Same as hiredis defaults
#
# source://redis-client//lib/redis_client/ruby_connection.rb#148
RedisClient::RubyConnection::KEEP_ALIVE_INTERVAL = T.let(T.unsafe(nil), Integer)

# source://redis-client//lib/redis_client/ruby_connection.rb#150
RedisClient::RubyConnection::KEEP_ALIVE_PROBES = T.let(T.unsafe(nil), Integer)

# Longer than hiredis defaults
#
# source://redis-client//lib/redis_client/ruby_connection.rb#149
RedisClient::RubyConnection::KEEP_ALIVE_TTL = T.let(T.unsafe(nil), Integer)

# source://redis-client//lib/redis_client/ruby_connection.rb#41
RedisClient::RubyConnection::SUPPORTS_RESOLV_TIMEOUT = T.let(T.unsafe(nil), TrueClass)

# source://redis-client//lib/redis_client/sentinel_config.rb#4
class RedisClient::SentinelConfig
  include ::RedisClient::Config::Common

  # @return [SentinelConfig] a new instance of SentinelConfig
  #
  # source://redis-client//lib/redis_client/sentinel_config.rb#10
  def initialize(name:, sentinels:, role: T.unsafe(nil), **client_config); end

  # source://redis-client//lib/redis_client/sentinel_config.rb#73
  def check_role!(role); end

  # source://redis-client//lib/redis_client/sentinel_config.rb#52
  def host; end

  # source://redis-client//lib/redis_client/sentinel_config.rb#60
  def path; end

  # source://redis-client//lib/redis_client/sentinel_config.rb#56
  def port; end

  # source://redis-client//lib/redis_client/sentinel_config.rb#46
  def reset; end

  # @return [Boolean]
  #
  # source://redis-client//lib/redis_client/sentinel_config.rb#64
  def retry_connecting?(attempt, error); end

  # @return [Boolean]
  #
  # source://redis-client//lib/redis_client/sentinel_config.rb#69
  def sentinel?; end

  # source://redis-client//lib/redis_client/sentinel_config.rb#40
  def sentinels; end

  private

  # source://redis-client//lib/redis_client/sentinel_config.rb#100
  def config; end

  # source://redis-client//lib/redis_client/sentinel_config.rb#147
  def each_sentinel; end

  # source://redis-client//lib/redis_client/sentinel_config.rb#169
  def refresh_sentinels(sentinel_client); end

  # source://redis-client//lib/redis_client/sentinel_config.rb#110
  def resolve_master; end

  # source://redis-client//lib/redis_client/sentinel_config.rb#129
  def resolve_replica; end

  # source://redis-client//lib/redis_client/sentinel_config.rb#125
  def sentinel_client(sentinel_config); end

  # source://redis-client//lib/redis_client/sentinel_config.rb#89
  def sentinels_to_configs(sentinels); end
end

# source://redis-client//lib/redis_client/sentinel_config.rb#8
RedisClient::SentinelConfig::DEFAULT_RECONNECT_ATTEMPTS = T.let(T.unsafe(nil), Integer)

# source://redis-client//lib/redis_client/sentinel_config.rb#7
RedisClient::SentinelConfig::SENTINEL_DELAY = T.let(T.unsafe(nil), Float)

# source://redis-client//lib/redis_client.rb#89
class RedisClient::TimeoutError < ::RedisClient::ConnectionError; end

# source://redis-client//lib/redis_client.rb#82
class RedisClient::UnsupportedServer < ::RedisClient::Error; end

# source://redis-client//lib/redis_client/version.rb#4
RedisClient::VERSION = T.let(T.unsafe(nil), String)

# source://redis-client//lib/redis_client.rb#91
class RedisClient::WriteTimeoutError < ::RedisClient::TimeoutError; end

# source://redis-client//lib/redis_client.rb#123
class RedisClient::WrongTypeError < ::RedisClient::CommandError; end
