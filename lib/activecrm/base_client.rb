module ActiveCRM
  class BaseClient
    attr_reader :username, :password, :api_key
    
    def initialize(options = {})
      @username = options[:username]
      @password = options[:password]
      @api_key = options[:api_key]
    end

    def contacts
      []
    end

    def leads
      []
    end
  end
end
