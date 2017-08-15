class EventsController < ApplicationController

  def index
    @events = Event.all.select do |event|
      event.user.sex == search_params[:sex]
    end
  end

  def my_events
    @my_events = Event.all.select do |event|
      event.user == current_user
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
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

  def search_params
    params.require(:search).permit(:sex)
  end
end

