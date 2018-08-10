class Admin::EventsController < Admin::DashboardController
  before_action :list_events

  def edit
  end

  def update
  end

  def list_events
    @events = Event.all
  end
end
