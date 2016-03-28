class PhotoController < ApplicationController

  post '/upload' do
    path = 'uploaded_images/user_img' + Time.now.to_s + '.png'
    File.open(path, "wb") do |file|
      file.write(Base64.decode64(params[:imgBase64].gsub(/data:image\/jpeg;base64,/,'')))
    end
    p 'posted'

    @user = User.find_by username: session[:username]
    photo = Photo.create url: path, owner_id: @user.id, caption: "test caption"

    # p photo.url
    # p photo.owner_id
    # p photo.caption

    # Photo.where(owner_id: @user.id).find_each do |photo|
    #   p photo.url
    # end

    erb :display_user_photos

  end


end
