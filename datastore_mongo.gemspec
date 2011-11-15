$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "datastore_mongo/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "datastore_mongo"
  s.version     = DatastoreMongo::VERSION
  s.authors     = ["John Hinnegan"]
  s.email       = ["john.hinnegan@thinknear.com"]
  s.homepage    = "http://softwaregravy.com"
  s.summary     = "A very simple proof of concept to connecto to mongo"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.1.1"
  s.add_dependency "mongo_mapper", "~> 0.10.1"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "sqlite3"
end
