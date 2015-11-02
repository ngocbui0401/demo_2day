source 'https://rubygems.org'

gem 'rails',        '4.2.2'
gem 'bootstrap-sass', '3.2.0.0'
# gem 'less-rails-bootstrap'
gem 'sass-rails',   '5.0.2'
gem 'uglifier',     '2.5.3'
gem 'coffee-rails', '4.1.0'
gem 'jquery-rails', '4.0.3'
gem 'turbolinks',   '2.3.0'
gem 'jbuilder',     '2.2.3'
gem 'sdoc',         '0.4.0', group: :doc
gem 'bcrypt',       '3.1.7'
# create virtual data
gem 'faker',        '1.4.2'

# Upload image
gem 'carrierwave',  '0.10.0'
gem 'mini_magick',  '3.8.0'
# store file on cloud aws
gem 'fog', require: 'fog/aws'

# Paginate
gem 'will_paginate',  '3.0.7'
gem 'bootstrap-will_paginate',  '0.0.10'

# use HAML
gem "haml"

# PDF reader
# gem 'pdf-reader'

# Caching page|action
# gem 'actionpack-page_caching'
# gem 'actionpack-action_caching'

# Fix loi~ css trong mail
gem 'premailer-rails'
gem 'nokogiri'

# Delay_job
gem 'delayed_job_active_record'   # lam viec voi ActiveRecord
# gem 'delayed_job_mongoid'     # lam viec voi mongoDB


group :development, :test do
  gem 'mailcatcher'
  gem 'sqlite3',     '1.3.9'
  #gem 'mysql2', '~> 0.3.20'
  gem 'byebug',      '3.4.0'
  gem 'web-console', '2.0.0.beta3'
  gem 'spring',      '1.1.3'
  # Rspec test
  gem 'rspec-rails'
  # Help integration test
  gem "capybara"
end

group :test do
  gem 'minitest-reporters', '1.0.5'
  gem 'mini_backtrace',     '0.1.3'
  gem 'guard-minitest',     '2.3.1'
end

group :production do
  gem 'pg',             '0.17.1'
  gem 'rails_12factor', '0.0.2'
  gem 'puma',           '2.11.1'
end

# gem run on OSX
# group :darwin do
#   gem 'rb-fsevent'
#   gem 'growl'
# end

# gem run on linux
# group :linux do
#   gem 'rb-inotify'
# end