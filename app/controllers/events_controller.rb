class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]
  before_action :new_event, only: [:new]

  def index
    if params[:date].blank?
      @events = Event.all
    elsif params[:date] == "Today"
      @events = Event.happening_today
    else
      @events = Event.not_is_it_was
    end
  end

  def create
    @event = Event.create(event_params)
    @event.owner_id = session[:user_id]
    @event.save

    redirect_to events_path
  end

  def new
  end

  def show
  end

  def update
    @event = Event.find_by(params[:id])
    @event.update(event_params)
    redirect_to events_path
  end

  def destroy
    @event.destroy
    redirect_to admin_events_path
  end

  def edit
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def new_event
    @event = Event.new
  end

  def event_params
    params.require(:event).permit(
      :title,
      :date,
      :summary,
      :owner_id,
      user_ids: [],
    )
  end
end
