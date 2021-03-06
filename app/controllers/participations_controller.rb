class ParticipationsController < ApplicationController

  before_action :set_event, only: [:new, :create]
  before_action :set_participation, only: [:edit, :update, :destroy, :show]
  def new
    @participation = Participation.new
  end

  def create
    @participation = Participation.new
    @participation.user = current_user
    @participation.event = @event
    if @participation.save
      redirect_to user_participations_path(current_user)
    else
      render event_path(@event)
    end
  end

  def edit
  end

  def update
    if @participation.update(participations_params)
      redirect_to user_participations_path(current_user)
    else
      render :edit
    end
  end

  def destroy
    @participation.destroy
    redirect_to @user
  end

  def index
    @participations = Participation.all
  end

  def show
  end

  private

  def set_event
    @event = Event.find(params[:event_id])
  end

  def participations_params
    params.require(:participation).permit(:rating, :review)
  end

  def set_participation
    @participation = Participation.find(params[:id])
  end
end
