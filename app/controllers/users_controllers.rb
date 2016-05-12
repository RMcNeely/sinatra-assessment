class UsersController < ApplicationController

  get '/sign-up' do
    if !logged_in?
      erb :sign_up
    else
      redirect '/home'
    end
  end

  post '/sign-up' do
    if !User.find(user_name: params[:user][:user_name])
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
    user = User.find(user_name: params[:user][:user_name])
    if user && user.authenticate(params[:user][:password])
      session[:id] = user
      redirect '/home'
    else
      redirect '/error'
<<<<<<< HEAD

=======
>>>>>>> 25d5437102a00ca0586e7dd4b5f3266b3ceb6d55
    end
  end
end
