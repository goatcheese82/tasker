class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy, :index]
  before_action :set_current_user, only: [:show, :edit, :update, :destroy]

  def home
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    end
    @events = Event.all
  end

  def show
  end

  def edit
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render "new"
    end
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
    @user = User.find(params[:id])
  end

  def set_current_user
    if session[:user_id]
      @current_user = User.find(session[:user_id])
    else
      redirect_to root_path
    end
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
