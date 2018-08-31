class GroupAssignmentsController < ApplicationController
  def new
    @group_assignment = GroupAssignment.new
    @users = User.all
    @groups = Group.all
  end

  def create
    @group_assignment = GroupAssignment.new(ga_params)
    @group_assignment.save
    redirect_to group_path(@group_assignment.group_id)
  end

  def show
    @ga = GroupAssignment.find_by(id: params[:id])
  end

  def destroy
  end

  def index
  end

  def edit
  end

  def update
  end

  private

  def ga_params
    params.require(:group_assignment).permit(
      :user_id,
      :group_id,
      :group_admin
    )
  end
end
