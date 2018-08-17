class ApplicationController < ActionController::Base
  def list_groups
    @groups = Group.all
  end
end
