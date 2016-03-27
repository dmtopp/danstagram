class UserController < ApplicationController

  get '/' do
    erb :user_info
  end

  post '/login/?' do
    user = User.find_by username: params[:username]
    session[:logged_in] = true
    session[:username] = params[:username]
    @users = User.all
    erb :all
  end

  get '/logout/?' do
    session[:logged_in] = false
    session[:username] = nil
    @users = User.all
    erb :all
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
