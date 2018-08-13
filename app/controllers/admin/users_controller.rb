class Admin::UsersController < Admin::DashboardController
  before_action :authorize
  before_action :list_users

  def index
    self.current_user
    render :home
  end

  def edit
  end

  def update
  end

  private

  def list_users
    @users = User.all
  end
end
