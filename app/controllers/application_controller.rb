class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  enable :sessions
  set :session_secret, "password_security"
  set :public_folder, 'public'
  set :views, 'app/views'

  get '/' do
    binding.pry
    @locations = Location.all
    erb :home
  end

  get '/error' do
    erb :error
  end

  get '/rankings' do
    @locations = Location.all
    #binding.pry
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
