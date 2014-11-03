class SessionsController < ApplicationController

  def create
    user = User.find_by(name: params[:name])       #find user by name typed in
    if user && user.authenticate(params[:password]) # if user was found matching that name and if password
                                                    # matches with authenticate
      session[:user_id] = user.id                   #store user id to session
      redirect_to root_path, notice: "Logged in!"

    else
      flash.now.alert = "Email or password is invalid"
      render "pages/home"
    end
  end

  def destroy #creates logout function
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged Out!"
  end

end
