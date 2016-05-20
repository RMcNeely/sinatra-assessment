class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  enable :sessions
  set :session_secret, "password_security"
  set :public_folder, 'public'
  set :views, 'app/views'

  get '/' do
    #binding.pry
    @locations = Location.all
    erb :home
  end


  get '/public/background-1' do

  end

  get '/error' do
    erb :error
  end

  get '/rankings' do
    @locations = Location.all
    @locations.sort {|l| l.rating}.reverse
    erb :rankings
  end

  helpers do
    def logged_in?
      !!session[:id]
    end

    def current_user
      User.find_by_id(session[:id])
    end
  end
end
