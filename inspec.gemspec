# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'inspec/version'

Gem::Specification.new do |spec|
  spec.name          = 'inspec'
  spec.version       = Inspec::VERSION
  spec.authors       = ['Dominik Richter']
  spec.email         = ['dominik.richter@gmail.com']
  spec.summary       = 'Validate Inspec compliance checks'
  spec.description   = 'Validate Inspec compliance checks.'
  spec.homepage      = 'https://github.com/chef/inspec'
  spec.license       = 'Apache 2.0'

  spec.files = %w{
    README.md Rakefile MAINTAINERS.toml MAINTAINERS.md LICENSE inspec.gemspec
    Gemfile CHANGELOG.md .rubocop.yml
  } + Dir.glob(
    '{bin,docs,examples,lib,tasks,test}/**/*', File::FNM_DOTMATCH
  ).reject { |f| File.directory?(f) }

  spec.executables   = %w{ inspec }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'r-train', '~> 0.9'
  spec.add_dependency 'thor', '~> 0.19'
  spec.add_dependency 'json', '~> 1.8'
  spec.add_dependency 'rainbow', '~> 2'
  spec.add_dependency 'method_source', '~> 0.8'
  spec.add_dependency 'rubyzip', '~> 1.1'
  spec.add_dependency 'rspec', '~> 3.3'
  spec.add_dependency 'rspec-its', '~> 1.2'
  spec.add_dependency 'pry', '~> 0'
end
