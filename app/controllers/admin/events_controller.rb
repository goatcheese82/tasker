class Admin::EventsController < Admin::DashboardController
  before_action :list_events

  def edit
  end

  def update
    redirect_to events_path
  end

  def new
    redirect_to new_event_path
  end

  def list_events
    @events = Event.all
  end
end
