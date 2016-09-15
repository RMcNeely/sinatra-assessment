source "http://rubygems.org"

gem 'activerecord', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'sinatra-bootstrap', :require => 'sinatra/bootstrap'


gem 'sinatra'
gem 'pry-nav'
gem 'rake'
gem 'bcrypt'
gem 'rspec'
gem 'rack-test'
gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
gem 'require_all'


group :development, :test do
  gem "sqlite3"
  gem "pry"
  gem "shotgun"
  gem "tux"
  gem "capybara"
end

group :production do
  gem 'puma'
  gem 'pg'
  gem 'rails_12factor'
end
