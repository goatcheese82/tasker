class GroupsController < ApplicationController
  def edit
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new(group_params)
    if @group.save
      redirect_to "/groups"
    else
      render "new"
    end
  end

  private

  def group_params
    params.require(:group).permit(
      :title,
      :description,
      group_assignments_attributes: [:group_admin, :id],
    )
  end
end
