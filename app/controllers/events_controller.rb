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
    @event.user = current_user
    if @event.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:title, :address, :description, :start_at)
  end

  def search_params
    params.require(:search).permit(:sex)
  end
end

