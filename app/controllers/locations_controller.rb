class LocationsController < ApplicationController

<<<<<<< HEAD
  get '/locations' do
    @locations = Location.all
    erb :'locations/index'
  end

  get '/location/:id' do
    @location = Location.find_by_id(params[:id])
=======
  get '/location/:slug' do
    @location = Location.find_by_slug(params[:slug])
>>>>>>> 25d5437102a00ca0586e7dd4b5f3266b3ceb6d55
    erb :'locations/show'
  end

end
