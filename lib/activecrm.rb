require "activecrm/version"
require "activecrm/client_factory"

module ActiveCRM
  def self.create_client(name, options = {})
    ClientFactory.create_client(name, options)
  end
end
