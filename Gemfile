source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.2.2'
gem 'mysql2', '>= 0.3.18', '< 0.5'
gem 'puma', '~> 3.7'

gem 'activerecord-import'
gem 'armg'
gem 'config'
gem 'devise'
gem 'doorkeeper'
gem 'dotenv-rails'
gem 'faraday'
gem 'faraday_middleware'
gem 'grape'
gem 'grape-entity'
gem 'grape-swagger'
gem 'grape-swagger-entity'
gem 'grape-swagger-rails'
gem 'kaminari'
gem 'parallel'
gem 'ransack'
gem "rgeo-proj4"
gem 'slim-rails'
gem 'seed-fu'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'database_cleaner'
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rspec_junit_formatter'
  gem 'selenium-webdriver'
  gem 'simplecov'
  gem 'test-prof'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'pry-rails'
  gem 'hirb'
  gem 'hirb-unicode'
  gem 'yard'
  gem 'yard-activesupport-concern' # Rails で Concern 使う場合は必須
  gem 'redcarpet' # Option (Markdown)
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
