class LocationsController < ApplicationController

  get '/locations' do
    @locations = Location.all
    erb :'locations/index'
  end

  get '/location/:id' do
    @location = Location.find_by_id(params[:id])
    erb :'locations/show'
  end

end
