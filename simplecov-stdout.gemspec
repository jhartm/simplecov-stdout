lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "simplecov-stdout/version"

Gem::Specification.new do |spec|
  spec.name          = "simplecov-stdout"
  spec.version       = Simplecov::Formatter::STDOUTFormatter::VERSION
  spec.authors       = ["John Hartmann"]
  spec.email         = ["jhartmann@georgeconsulting.com"]

  spec.summary       = %q{STDOUT formatter for SimpleCov code coverage for Ruby 1.9+}
  spec.description   = %q{STDOUT formatter for SimpleCov code coverage for Ruby 1.9+}
  spec.homepage      = "https://github.com/jhartm/simplecov-stdout"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end

  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", ">= 1.17"
  spec.add_development_dependency "rake", ">= 13.3.3"
  spec.add_development_dependency "minitest", ">= 5.13"
end
