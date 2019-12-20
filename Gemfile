# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.3'
# Use mysql as the database for Active Record
gem 'mysql2', '>= 0.4.4', '< 0.6.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

gem 'bootstrap', '~> 4.1.3'
gem 'carrierwave'
gem 'config'
gem 'devise'
gem 'draper'
gem 'enum_help'
gem 'exception_notification', github: 'smartinez87/exception_notification'
gem 'font-awesome-sass', '~> 5.2.0'
gem 'fullcalendar-rails'
gem 'gmaps4rails'
gem 'jquery-rails'
gem 'kaminari'
gem 'momentjs-rails'
gem 'pry-byebug'
gem 'pry-doc'    # methodを表示
gem 'pry-rails'  # rails console(もしくは、rails c)でirbの代わりにpryを使われる
gem 'pry-stack_explorer' # スタックをたどれる))
gem 'rails-i18n'
gem 'ransack'
gem 'rubocop-rails'
gem 'slack-notifier'
gem 'slim-rails'
gem 'sorcery'
gem 'devise-i18n'
gem 'devise-i18n-views'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'heavens_door'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper' unless ENV.key?('CIRCLECI')
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'web-console', '>= 3.3.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
