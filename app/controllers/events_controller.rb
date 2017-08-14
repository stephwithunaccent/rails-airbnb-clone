class EventsController < ApplicationController

  def index
    @events = Event.all
  end

  def show
    @event = Events.find(params[:id])
  end

  def new
    @event = Events.new
  end

  def create
    @event = Events.new(event_params)
    if @event.save
      redirect_to events_path(@event)
    else
      render :new
    end
  end

  private

  def events_params
    params.require(:events).permit(:title, :address, :description, :start_at)
  end
end

