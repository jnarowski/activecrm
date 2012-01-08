# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "activecrm/version"

Gem::Specification.new do |s|
  s.name        = "activecrm"
  s.version     = Activecrm::VERSION
  s.authors     = ["John Paul Narowski"]
  s.email       = ["jp@karmacrm.com"]
  s.homepage    = ""
  s.summary     = %q{Wrapper gem for various CRM APIs}
  s.description = %q{Wrapper gem for various CRM APIs}

  s.rubyforge_project = "activecrm"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.extra_rdoc_files = [ "README.rdoc" ]
  s.rdoc_options << '--title' << 'ActiveCRM wrapper' <<
                       '--main' << 'README.rdoc'

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end
