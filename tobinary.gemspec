# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'tobinary/version'

Gem::Specification.new do |spec|
  spec.name          = "tobinary"
  spec.version       = Tobinary::VERSION
  spec.authors       = ["recepinanc"]
  spec.email         = ["recepinanc96@gmail.com"]

  spec.summary       = %q{This gem lets you convert any number to binary.}
  spec.homepage      = "https://github.com/recepinanc/tobinary"
  spec.license      = "GNU"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
