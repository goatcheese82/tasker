class Admin::DashboardController < ActionController::Base
  layout "admin"
  before_action :authorize
  before_action :list_groups
  before_action :set_events

  def index
  end

  private

  def set_events
    @events = Event.all
  end

  def authorize
    @current_user = User.find_by(id: session[:user_id])
    if @current_user && @current_user.admin
    else
      redirect_to root_path
    end
  end

  def list_groups
    @groups = Group.all
  end
end
