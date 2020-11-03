class EventsController < ApplicationController
  before_action :authenticate_user!, only: %i[new edit destroy]
  before_action :set_event, only: %i[show edit update destroy]

  def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
  end

  def create
    @event = Event.new(event_params)
    @event.event_admin_id = current_user.id
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end

  def event_params
    params.require(:event).permit(:title, :description, :location, :price, :duration)
  end

end
