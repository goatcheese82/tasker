class Admin::GroupsController < Admin::DashboardController
  def new
  end

  def show
    @group = Group.find(params[:id])
  end
end
