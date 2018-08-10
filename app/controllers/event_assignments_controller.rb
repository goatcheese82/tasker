class EventAssignmentsController < ApplicationController
  def new
    @assignment = Assignment.create(
      :user_id => params[:user_id],
      :event_id => params[:event_id],
    )
  end
end
