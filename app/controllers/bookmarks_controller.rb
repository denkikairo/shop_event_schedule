class BookmarksController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    current_player.like(@event)
  end

  def destroy
    @event = Bookmark.find(params[:id]).event
    current_player.unlike(@event)
  end
end
