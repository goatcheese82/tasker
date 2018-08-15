class Admin::UsersController < Admin::DashboardController
  before_action :authorize
  before_action :list_users

  def edit
  end

  def update
  end

  def new
    @user = User.new
  end

  def create
    User.create(user_params)
    redirect_to admin_users_path
  end

  private

  def list_users
    @users = User.all
  end

  def set_user
    @user = params[:user_id]
  end

  def user_params
    params.require(:user).permit(
      :first_name,
      :last_name,
      :email,
      :password,
      :phone_number,
      :image,
      :address,
      :admin
    )
  end
end
