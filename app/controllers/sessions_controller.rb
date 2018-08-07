class SessionsController < ApplicationController
  def create
    @user = User.find_or_create_by(uid: auth["uid"]) do |u|
      u.last_name = auth["info"]["name"].split(/\W+/).last
      u.first_name = auth["info"]["name"].split(/\W+/).first
      u.email = auth["info"]["email"]
      u.image = auth["info"]["image"]
    end

    session[:user_id] = @user.id

    render "users/home"
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
