require "spec"
require "vcr"

$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), '..', 'lib'))
require "activecrm"

VCR.config do |vcr|
  vcr.cassette_library_dir = 'spec/fixtures/cassettes'
  vcr.stub_with :webmock
  vcr.default_cassette_options = { :record => :once }
end

Spec::Runner.configure do |c|
  c.extend VCR::RSpec::Macros
end
