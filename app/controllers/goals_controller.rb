class GoalsController < ApplicationController
  def index
    @u = User.find(params[:user_id])
  end

  def create
    u = User.find(session[:user_id])
    goal = u.goals.create(goal_params)
    goal.save
    redirect_to root_path
  end

  def new
    @goal = Goal.new(user_id: params[:user_id])
    @user = User.find(params[:user_id])
  end

  def show
    @u = User.find(params[:user_id])
  end

  def update
  end

  def destroy
  end

  def goal_params
    params.require(:goal).permit(
      :summary,
      :deadline,
      :user_id
    )
  end
end
