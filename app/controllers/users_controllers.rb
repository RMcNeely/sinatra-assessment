class UsersController < ApplicationController

  get '/sign-up' do
    if !logged_in?
      erb :sign_up
    else
      redirect '/home'
    end
  end

end
