class SessionsController < ApplicationController
  before_action :check, only: [:create, :new]
  
  def check
    if current_user.present?
        redirect_to root_url

      # redirect_to laptops_path
    else 
      #redirect_to root_url
  end
end

  def new
  end
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:error] = "Email or Password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
