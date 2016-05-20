class UsersController < ApplicationController

  get '/sign-up' do
    if !logged_in?
      erb :sign_up
    else
      redirect '/home'
    end
  end

  post '/sign-up' do
    if !User.find_by(user_name: params[:user][:user_name])
      user = User.new(params[:user])
    else
      @username_taken
      redirect '/error'
    end
    session[:id] = user.save
    redirect '/'
  end

  get '/sign-in' do
    if !logged_in?
      erb :sign_in
    else
      redirect '/home'
    end
  end

  post '/sign-in' do
  #  binding.pry
    user = User.find_by(user_name: params[:user][:user_name])
    if user && user.authenticate(params[:user][:password])
     # user && user.authenticate(params[:password])
      session[:id] = user.id
      redirect '/home'
    else
      redirect '/error'
    end
  end

  get '/favorites' do
    if logged_in?
      binding.pry
      @favorites = current_user.favorites
      render :favorites
    else
      @not_logged_in
      erb :error
    end
  end
end
