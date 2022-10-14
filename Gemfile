# frozen_string_literal: true

PUBLIC_GEM_SERVER = 'https://rubygems.org'

source PUBLIC_GEM_SERVER

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

gemspec

gem 'bundler', '>= 1.0.0'
gem 'rspec', '~> 3.0'
gem 'rspec-its', '>= 0'
gem 'ci_reporter', '~> 1.6'
gem 'yard', '>= 0.7.0'
gem 'rake', '>= 0'
gem 'guard', '>= 0.9.0'
gem 'guard-rspec', '>= 0'
gem 'listen', '< 3.1.0'
gem 'ruby_gntp', '>= 0'
gem 'guard-rake', '>= 0'
gem 'rake-compiler', '>= 0'
gem 'coveralls', '>= 0'

if RUBY_VERSION < '2.0'
  gem 'term-ansicolor', '< 1.3.1'
  gem 'tins', '~> 1.6.0'
end
