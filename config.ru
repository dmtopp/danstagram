require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'danstagram')

require './controllers/application_controller'

# require './models/'





map('/') { run ApplicationController }
