source 'http://rubygems.org'

gem 'rails', '3.1.1'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'execjs'
gem 'therubyracer', '0.11.4'
gem 'jquery-rails'
gem 'nokogiri', '1.5.0'
gem "colorbox-rails", "~> 0.0.7"
gem 'formtastic'
gem 'tabletastic'
gem "paperclip", "~> 2.4"

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

  gem 'sqlite3', :group => [:development, :test]


group :development, :test do
  gem 'rspec-rails', '~> 2.6'

  gem 'annotate', :git => 'git://github.com/ctran/annotate_models.git'
  gem 'faker', '0.3.1'
end

group :test do
  gem 'rspec-rails', '~> 2.6'
  # Pretty printed test output
  gem 'turn', :require => false
  gem 'factory_girl_rails', '1.0'
end

group :production do
  gem 'thin'
  gem 'pg'
end 
