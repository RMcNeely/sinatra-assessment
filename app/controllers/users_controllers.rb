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
    user.save
    session[:id] = user.id
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
      @error_msg = "Sonmething went wrong!"
      erb :'sign_in'  # '/error'
    end
  end

end
