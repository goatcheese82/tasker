class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def home
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
    @events = Event.all
  end

  def show
  end

  def edit
  end

  def create
    @user = User.create(user_params)
    @user.save
    session[:user_id] = @user.id

    redirect_to root_path
  end

  def new
    @user = User.new
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
