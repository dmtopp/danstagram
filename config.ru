require 'bundler'
Bundler.require

ActiveRecord::Base.establish_connection(adapter: 'postgresql', database: 'danstagram')

require './controllers/application_controller'
require './controllers/users_controller'
require './controllers/photos_controller'

require './models/user'
require './models/photo'

# require './models/'





map('/') { run ApplicationController }
map('/users') { run UserController }
map('/photos') { run PhotoController }
