# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'skynet/client/version'

Gem::Specification.new do |spec|
  spec.name          = "skynet-client"
  spec.version       = Skynet::Client::VERSION
  spec.authors       = ["ElliottAYoung"]
  spec.email         = ["elliott.a.young@gmail.com"]

  spec.summary       = "A Client for Accessing the CIMUN SkyNet API"
  spec.description   = "A Client for Accessing the CIMUN SkyNet API"
  spec.homepage      = "https://github.com/ElliottAYoung/skynet-client.git"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "pry"
end
