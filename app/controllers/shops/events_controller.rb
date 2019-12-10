class Shops::EventsController < Shops::BaseController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = Event.all
  end

  def show
  end

  def new
    @event = Event.new
    render plain: render_to_string(partial: 'form_new', layout: false, locals: { event: @event })
  end

  def edit
    render plain: render_to_string(partial: 'form_edit', layout: false, locals: { event: @event })
  end

  def create
    @event = current_shop.events.build(event_params)
    @event.update(event_params)
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event.update(event_params)
  end

  def destroy
    @event.destroy!
  end

  private

    def set_event
      @event = Event.find(params[:id])
    end

    def event_params
      params.require(:event).permit(:title, :start_time, :end_time)
    end
end
