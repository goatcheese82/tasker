class ApplicationController < ActionController::Base
  before_action :set_current_user
  before_action :logged_in?

  def list_groups
    @groups = Group.all
  end

  def logged_in?
    !!session[:user_id]
  end

  def set_current_user
    if logged_in?
      @current_user = User.find(session[:user_id])
    end
  end
end
