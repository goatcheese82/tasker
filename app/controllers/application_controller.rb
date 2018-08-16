class ApplicationController < ActionController::Base
  def current_user
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    current_user != nil
  end

  def list_groups
    @groups = Group.all
  end
end
