# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "suo/version"

Gem::Specification.new do |spec|
  spec.name          = "suo"
  spec.version       = Suo::VERSION
  spec.authors       = ["Nick Elser"]
  spec.email         = ["nick.elser@gmail.com"]

  spec.summary       = %q(Distributed locks (mutexes & semaphores) using Memcached or Redis.)
  spec.description   = %q(Distributed locks (mutexes & semaphores) using Memcached or Redis.)
  spec.homepage      = "https://github.com/instacart/suo"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.bindir        = "bin"
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.required_ruby_version = ">= 3.1"

  spec.add_dependency "dalli"
  spec.add_dependency "redis"
  spec.add_dependency "msgpack"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rubocop", "~> 1.68.0"
  spec.add_development_dependency "minitest", "~> 5.25"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 0.4.7"
end
