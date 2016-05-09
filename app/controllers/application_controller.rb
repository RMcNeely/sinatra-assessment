class ApplicationController < Sinatra::Base
  register Sinatra::ActiveRecordExtension
  enable :sessions
  set :session_secret, "password_security"
  set :public_folder, 'public'
  set :views, 'app/views'

  get '/' do
    @locations = Location.all
    erb :home
  end


  get '/public/background-1' do

  end

  get '/error' do
    erb :error
  end

#  post '/home' do
#    session[:id] = User.create(params[:user])
#    #binding.pry
#    redirect '/'
#  end

  helpers do
    def logged_in?
      !!session[:id]
    end

    def current_user
      User.find(session[:id])
    end
  end
end
