class Admin::DashboardController < ActionController::Base
  before_action :authorize

  def index
  end

  private

  def authorize
    @user = User.find_by(id: session[:user_id])
    if @user && @user.admin
    else
      redirect_to root_path
    end
  end
end
