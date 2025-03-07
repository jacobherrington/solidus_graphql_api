# frozen_string_literal: true

require_relative 'lib/solidus_graphql_api/version'

Gem::Specification.new do |spec|
  spec.name = 'solidus_graphql_api'
  spec.version = SolidusGraphqlApi::VERSION
  spec.authors = ['Christian Rimondi', 'Alessio Rocco', 'Rainer Dema']
  spec.email = 'contact@solidus.io'

  spec.summary = 'Solidus GraphQL API'
  spec.description = 'GraphQL comes to Solidus'
  spec.homepage = 'https://github.com/solidusio-contrib/solidus_graphql_api'
  spec.license = 'BSD-3-Clause'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/solidusio-contrib/solidus_graphql_api'
  spec.metadata['changelog_uri'] = 'https://github.com/solidusio-contrib/solidus_graphql_api/blob/master/CHANGELOG.md'

  spec.required_ruby_version = Gem::Requirement.new('~> 2.5')

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  files = Dir.chdir(__dir__) { `git ls-files -z`.split("\x0") }

  spec.files = files.grep_v(%r{^(test|spec|features)/})
  spec.test_files = files.grep(%r{^(test|spec|features)/})
  spec.bindir = "exe"
  spec.executables = files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'batch-loader', '~> 2.0'
  spec.add_dependency 'graphql', '>= 1.10', '< 1.12'
  spec.add_dependency 'rails', '~> 6.1'
  spec.add_dependency 'solidus_core', ['>= 2.10', '< 4']
  spec.add_dependency 'solidus_support', '~> 0.6'

  spec.add_development_dependency 'graphql-docs', '~> 2.0.1'
  spec.add_development_dependency 'graphql-schema_comparator', '~> 1.0.0'
  spec.add_development_dependency 'pry', '~> 0.13.1'
  spec.add_development_dependency 'simplecov', '~> 0.16.1'
  spec.add_development_dependency 'solidus_dev_support', '~> 2.4'
  spec.add_development_dependency 'timecop', '~> 0.9.1'
  spec.add_development_dependency 'with_model', '~> 2.1.2'
end
