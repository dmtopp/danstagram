class UserController < ApplicationController

  get '/' do
    erb :user_info
  end

  post '/login/?' do
    user = User.find_by username: params[:username]
    p user.to_s
    p user.username
    p user.password
  end

  post '/logout/?' do


  end

  post '/signup' do
    does_exist = User.find_by username: params[:username]
    if !does_exist
      User.create username: params[:username], email: params[:email], password: params[:password]
      @users = User.all
      erb :all
    else
      p "User already exists!"
    end

  end

end
