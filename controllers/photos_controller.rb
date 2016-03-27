class PhotoController < ApplicationController

  post '/upload' do
    params.each do |k|
      p "#{k}"
      p 'k'
    end
    p params
    p 'posted'

  end


end
