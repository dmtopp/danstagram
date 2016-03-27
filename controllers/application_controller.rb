class ApplicationController < Sinatra::Base
  set :views, File.expand_path('../../views', __FILE__)
  set :public_dir, File.expand_path('../../public', __FILE__)

  enable :sessions

  $photo_index = 0

  get '/' do
    erb :user_info
  end


end
