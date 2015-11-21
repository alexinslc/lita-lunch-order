Gem::Specification.new do |spec|
  spec.name          = "lita-lunch-order"
  spec.version       = "0.1.1"
  spec.authors       = ["Alex Lutz"]
  spec.email         = ["alexinslc@gmail.com"]
  spec.description   = "Lita Handler that can take lunch orders in a list for easy ordering."
  spec.summary       = "Lita Handler that takes lunch orders in a list for easy ordering."
  spec.homepage      = "http://github.com/alexinslc/lita-lunch-order"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.6"

  spec.add_development_dependency "bundler", "~> 1.10.6"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.4.0"
end
