lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "food_truck_cli/version"

Gem::Specification.new do |spec|
  spec.name          = "food_truck_cli"
  spec.version       = FoodTruckCli::VERSION
  spec.authors       = ["Sarah Henderson"]
  spec.email         = ["sarahrose.henderson@gmail.com"]

  spec.summary       = "CLI to find food trucks open in the San Fran area."
  spec.homepage      = "https://rubygems.org/gems/food_truck_cli"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = 'http://mygemserver.com'

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/srosiex/foodtruck-cli"
  spec.metadata["changelog_uri"] = "https://github.com/srosiex/foodtruck-cli"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
#   spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
#     `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
#   end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "rest-client"
  spec.add_dependency "json"
end
