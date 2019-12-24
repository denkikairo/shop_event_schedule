class EventsController < ApplicationController
  before_action :set_event, only: %i[show]

  def index
    @events = Event.all
  end

  def show
    render plain: render_to_string(partial: 'form_show', layout: false, locals: { event: @event })
  end

  def bookmarks
    @bookmark_events = current_player.bookmark_events
  end

  private

  def set_event
    @event = Event.find(params[:id])
  end
end
