class EventsController < ApplicationController

  def index

    search = Geocoder.search(params[:search][:address]).first
    @near_events = Event.near(search.coordinates, 20)

    if search_params[:sex].present? && search_params[:address].present?
      @boucle = 1
      @events = Event.all.select do |event|
        @near_events.include?(event) && event.user.sex == search_params[:sex]
      end

    elsif !search_params[:address].present? && search_params[:sex].present?
      @boucle = 2
      @events = Event.all.select do |event|
        event.user.sex == search_params[:sex]
      end

    elsif !search_params[:sex].present? && search_params[:address].present?
      @boucle = 3
      @events = Event.all.select do |event|
        @near_events.include?(event)
      end

    else
      @boucle = 4
      @events = Event.all
    end

    @hash = Gmaps4rails.build_markers(@events) do |event, marker|
      marker.lat event.latitude
      marker.lng event.longitude
    end

  end

  def my_events
    @my_events = Event.all.select do |event|
      event.user == current_user
    end
  end


  def show
    @event = Event.find(params[:id])
    @participation = Participation.new
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      redirect_to event_path(@event)
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

