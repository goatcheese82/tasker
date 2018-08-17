class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_current_user, only: [:show, :edit, :update, :destroy]

  def home
    if session[:user_id] && !User.find(session[:user_id]).admin
      @current_user = User.find(session[:user_id])
      render "users/home"
    elsif !session[:user_id]
      render "users/home"
    else
      redirect_to admin_path
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
    if logged_in?
      set_current_user
      if @user.save && !@current_user.admin
        redirect_to root_path
      elsif @user.save
        redirect_to admin_users_path
      else
        render "new"
      end
    else
      if @user.save
        session[:user_id] = @user.id
        redirect_to root_path
      else
        render "new"
      end
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
    @user.destroy
    redirect_to admin_users_path
  end

  private

  def logged_in?
    !!session[:user_id]
  end

  def set_user
    @user = User.find(params[:id])
  end

  def set_current_user
    if logged_in?
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
