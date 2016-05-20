class DrinksController < ApplicationController

#  set :views, 'app/views/drinks'

  get '/drinks' do
    @drinks =  Drink.all
    erb :'drinks/drinks'
  end

end
