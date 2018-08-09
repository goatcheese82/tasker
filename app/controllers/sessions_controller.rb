class SessionsController < ApplicationController
  def create
    if auth = request.env["omniauth.auth"]
      @user = User.find_or_create_by_omni(auth)
      session[:user_id] = @user.id

      redirect_to root_path
    else
      @user = User.find_by(email: params["session"]["email"].downcase)
      if @user && @user.authenticate(params["session"]["password"])
        session[:user_id] = @user.id

        redirect_to root_path
      else
        render "/users/home"
      end
    end
  end

  def new
  end

  def logout
    session.destroy
    render "users/home"
  end

  private

  def auth
    request.env["omniauth.auth"]
  end
end
