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
      redirect '/'
    end
  end

  get '/sign-out' do
    session.destroy
    redirect'/'
  end

  post '/sign-in' do
    user = User.find_by(user_name: params[:user][:user_name])
    if user && user.authenticate(params[:password])
     # user && user.authenticate(params[:password])
      session[:id] = user.id
      redirect '/'
    else
      redirect '/error'
    end
  end

  get '/favorites' do
    if logged_in?
      @favorites = current_user.favorites
  #    binding.pry
      erb :favorites
    else
      @not_logged_in
      erb :error
    end
  end
end
