class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def home
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  def show
  end

  def edit
  end

  def update
    @user.update(user_params)
    render "users/home"
  end

  def destroy
  end

  private

  def set_user
    @user = User.find(session[:user_id])
  end

  def user_params
    params.require(:user).permit(
      :first_name,
      :password,
      :last_name,
      :phone_number,
      :image,
      :address,
      :admin
    )
  end
end
