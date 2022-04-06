# frozen_string_literal: true

require_relative "lib/reading/version"

Gem::Specification.new do |spec|
  spec.name = "reading"
  spec.version = Reading::VERSION
  spec.authors = ["ken"]
  spec.email = ["block24block@gmail.com"]

  spec.summary = "Read later"
  spec.homepage = "https://github.com/turnon/reading"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["homepage_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "watir", "~> 7.1.0"

  spec.add_development_dependency "pry", "~> 0.14.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
