# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "uy-rut"
  spec.version       = '0.0.2'
  spec.authors       = ["Alfonso Cora"]
  spec.email         = ["acora6@gmail.com"]
  spec.description   = %q{Includes helper methods to validate Uruguayan company identification numbers (RUT)}
  spec.summary       = %q{Uy::Rut is a class that allows to validate RUT numbers or generate fake ones for testing purposes}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec", "~> 2.14.1"
  spec.add_development_dependency "rake"
end
