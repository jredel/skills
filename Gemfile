# encoding: utf-8

source 'https://rubygems.org'

gem 'rails', '5.1.0'

gem 'activerecord-postgresql-adapter'
gem 'active_model_serializers', '~> 0.10.0'
gem 'annotate'
gem 'carrierwave'
gem 'faker'
gem 'odf-report'
gem 'mini_magick'
gem 'mysql2'
gem 'net-ldap', '~> 0.14.0'
gem 'pg', '0.19.0.pre20160409114042'
gem 'pg_search'
gem 'puma', '~> 3.0'
gem 'rack'
gem 'rails-i18n'
gem 'seed-fu'
gem 'sqlite3'
gem 'deep_cloneable', '~> 2.2.2'
gem 'airbrake', '~> 5.0'
gem 'database_cleaner'

group :metrics do
  gem 'brakeman'
  gem 'rubocop'
end

group :development, :test do
  # Call 'byebug' anywhere in the code
  # to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'rspec-rails', '~> 3.5', '>= 3.5.2'
  gem 'hirb'
end

group :development do
  gem 'bullet'
  gem 'listen', '~> 3.0.5'
  gem 'pry'
  # Spring speeds up development by keeping your application
  # running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'simplecov', '~> 0.12.0'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
