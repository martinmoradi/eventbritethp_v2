class EventsController < ApplicationController
  
   def index
    @events = Event.all
  end

  def new
    @event = Event.new
  end

  def show
  end

  def create
  end

  private

  def event_params
    params.require(:event).permit(:title, :description, :location, :price, :duration)
  end

end
