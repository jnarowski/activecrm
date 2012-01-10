require "activecrm/base_client"

module ActiveCRM
  # Load all client files. Client files are supposed to be named
  # with _client suffix. All such files will be loaded automatically
  # so when support for new CRM API is implemented file just has to
  # be placed in the same directory with this file and will be
  # available for use.
  path = File.expand_path(File.dirname(__FILE__))
  Dir.glob(File.join(path, "*_client.rb")).each do |clnt|
    require clnt unless clnt.end_with? "base_client"
  end
  
  class ClientFactory
    def self.create_client(name, options = {})
      clnt = nil
      begin
        cls = ActiveCRM.const_get(name)
        clnt = cls.new(options) if cls and cls.is_a?(Class)
      rescue NameError
      end
      clnt
    end
  end
end
