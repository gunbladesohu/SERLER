source 'https://rubygems.org'
ruby '1.9.3'

gem 'rails', '3.2.16'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Add Bootstrap sass support,
# for more info: https://github.com/twbs/bootstrap-sass
gem 'bootstrap-sass', '~> 3.3.5'
gem 'autoprefixer-rails'

# Add Saas for css organization
# http://sass-lang.com/documentation/file.SASS_REFERENCE.html#rackrailsmerb_plugin
gem "sass"

# Add compass for style mixins
# https://github.com/Compass/compass-rails
gem 'sass-rails',   '~> 3.2.5'
gem 'compass-rails'

# Add sunspot for search engine
# https://github.com/sunspot/sunspot
gem 'sunspot_rails'

gem 'jquery-rails'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'sqlite3'
  gem 'coveralls', require: false

  # pre-packaged Solr distribution for use in development:
  gem 'sunspot_solr'

  gem 'rspec-rails'

  # To use debugger
  # gem 'debugger'
end

group :production do
  gem 'pg'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'
