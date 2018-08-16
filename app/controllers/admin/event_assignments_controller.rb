class Admin::GroupAssignmentsController < Admin::DashboardController
  def new
    ga = GroupAssignment.new
  end

  def create
    g = Group.find(params[:id])
    u = User.find_by(params[:user_id])
  end

  def show
  end

  def destroy
  end

  def index
  end

  def edit
  end

  def update
  end
end
