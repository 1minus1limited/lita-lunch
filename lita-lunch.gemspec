Gem::Specification.new do |spec|
  spec.name          = "lita-lunch"
  spec.version       = "0.1.1"
  spec.authors       = ["Johno"]
  spec.email         = ["john.obrien@1minus1.com"]
  spec.description   = "Picks a lunch venue"
  spec.summary       = "Picks a lunch venue"
  spec.homepage      = "https://github.com/1minus1limited/lita-lunch"
  spec.license       = "TODO: Add a license"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.4"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
