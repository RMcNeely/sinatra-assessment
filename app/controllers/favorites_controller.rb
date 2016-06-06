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

  get '/favorites/edit' do
    @locations = Location.all
    @drinks = Drink.all
    erb :'favorites/edit'
  end

  post  '/favorites' do
#    binding.pry
    unless  params.empty?
      Drink.update_favorites(params, current_user)
      Location.update_favorites(params, current_user)
    end
    redirect '/favorites'
  end

end
