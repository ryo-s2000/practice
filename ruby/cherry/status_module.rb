module AwesomeApi
  @base_ulr = ''
  @debug_mode = false

  class << self
    def base_url=(value)
      @base_url = value
    end

    def base_url
      @base_url
    end

    def debug_mode=(value)
      @debug_mode = value
    end

    def debug_mode
      @debug_mode
    end
  end

end

AwesomeApi.base_url = 'https://example.com'
AwesomeApi.debug_mode = true

p AwesomeApi.base_url
p AwesomeApi.debug_mode
