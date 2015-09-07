# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment',  __FILE__)
run Serler::Application

# Add Saas support
# for more info: http://sass-lang.com/documentation/file.SASS_REFERENCE.html#rackrailsmerb_plugin
require 'sass/plugin/rack'
use Sass::Plugin::Rack