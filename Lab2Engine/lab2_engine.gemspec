$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "lab2_engine/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "lab2_engine"
  s.version     = Lab2Engine::VERSION
  s.authors     = ["jilliandburke"]
  s.email       = ["w0276390@nscc.ca"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Lab2Engine."
  s.description = "TODO: Description of Lab2Engine."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.5.1"

  s.add_development_dependency "mysql2"
end
