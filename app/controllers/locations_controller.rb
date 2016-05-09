class LocationsController < ApplicationController

  get '/location/:slug' do
    @location = Location.find_by_slug(params[:slug])
    erb :'locations/show'
  end

end
