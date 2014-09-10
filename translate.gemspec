# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'translate/version'

Gem::Specification.new do |spec|
  spec.name          = "translate"
  spec.version       = Translate::VERSION
  spec.authors       = ["David Hampl"]
  spec.email         = ["david.hampl@shoesize.me"]
  spec.summary       = "Provides an interface to translate I18n strings."
  spec.description   = "Works with the simple backend for rails i18n."
  spec.homepage      = "https://github.com/ShoeSizeMe/translate"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
