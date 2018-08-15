class Admin::UsersController < Admin::DashboardController
  before_action :authorize
  before_action :list_users

  def edit
  end

  def update
  end

  private

  def list_users
    @users = User.all
  end

  def set_user
    @user = params[:user_id]
  end
end
