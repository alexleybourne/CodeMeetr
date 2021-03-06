class EventsController < ApplicationController
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  # GET /events
  # GET /events.json
  def index
    @events = Event.all
    @events = Event.where("events.title ILIKE ? ", "%#{params[:query]}%") if params[:query]
  end

  # GET /events/1
  # GET /events/1.json
  def show
  end

  # GET /events/new
  def new
    @event = Event.new
  end

  # GET /events/1/edit
  def edit
  end

  # POST /events
  # POST /events.json
  def create
    pp params
    @event = Event.new(event_params)
    @event.user_id = current_user.id
    @event.start_time = Time.parse(params[:event][:start_time]).to_i
    @event.end_time = Time.parse(params[:event][:end_time]).to_i
    puts Time.parse(params[:event][:start_time]).to_i

    respond_to do |format|
      if @event.save
        format.html { redirect_to @event, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @event }
      else
        format.html { render :new }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events/1
  # PATCH/PUT /events/1.json
  def update
    @event.top_image.attach(params[:event][:top_image]) if params[:event][:top_image]
    @event.start_time = Time.parse(params[:event][:start_time]).to_i
    @event.end_time = Time.parse(params[:event][:end_time]).to_i
    respond_to do |format|
      if @event.update(event_params)
        format.html { redirect_to @event, notice: 'Event was successfully updated.' }
        format.json { render :show, status: :ok, location: @event }
      else
        format.html { render :edit }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @event.destroy
    respond_to do |format|
      format.html { redirect_to events_url, notice: 'Event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  # Join Event
  def join
    event = Event.find(params[:id])
    if event.users.length < event.capacity
      event.users << current_user
      event.save
      redirect_to event, notice: 'You are now going to the Event!'
    end
  end

  # leave Event
  def leave
    event = Event.find(params[:id])
      event.users.delete(current_user)
      event.save
      redirect_to event, notice: 'You have been removed from the Event!'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_event
      @event = Event.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def event_params
      params.require(:event).permit(:title, :description, :cover_image, :host_name, :color, :location, :start_time, :end_time, :pricing_id, :promotion_id, :user_id)
    end
end
