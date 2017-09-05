$:.push File.expand_path("../lib", __FILE__)

require 'ratechanger/version'

Gem::Specification.new do |spec|
  spec.name          = "ratechanger"
  spec.version       = Ratechanger::VERSION
  spec.authors       = ["Yaroslav"]
  spec.email         = ["tyagelsky.yaroslav@gmail.com"]

  spec.summary       = %q{Change a rate for users}
  spec.description   = %q{Changing a rate for users after photo-battle}
  spec.homepage      = ""

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
    
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
