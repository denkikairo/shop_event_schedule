class EventsController < ApplicationController
  before_action :set_event, only: %i[show]

  def index
    @events = Event.all
  end

  def show
    render plain: render_to_string(partial: 'form_show', layout: false, locals: { event: @event })
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end
