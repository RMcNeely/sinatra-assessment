class FavoritesController < ApplicationController

  get '/favorites' do
    if logged_in?
      @favorites = current_user.favorites
  #    binding.pry
      erb :'favorites/favorites'
    else
      @not_logged_in
      erb :error
    end
  end

end
