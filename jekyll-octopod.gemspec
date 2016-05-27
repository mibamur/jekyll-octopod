# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jekyll/octopod/version"

Gem::Specification.new do |s|
  s.name = "jekyll-octopod"
  s.version = Jekyll::Octopod::VERSION::STRING
  s.platform = Gem::Platform::RUBY
  s.authors = ["Stefan Haslinger"]
  s.email = ["stefan.haslinger@informatom.com"]
  s.homepage = "https://github.com/haslinger/jekyll-"
  s.summary = %q{Podcasting Publishing Extension for Jekyll}
  s.description = %q{Enables you to publish your podcast using the Jekyll static site generator, creating feeds and a reasonably looking website}
  s.license = "MIT"

  s.rubyforge_project = "jekyll-"
  s.files = Dir["lib/**/*"] + ["Rakefile", "README.rdoc"]
  s.test_files = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_dependency 'byebug'
  s.add_dependency 'jekyll', '~> 3.1'
  s.add_development_dependency 'rspec', '~> 2.9'
end