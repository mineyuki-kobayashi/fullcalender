class CalenderEventsController < ApplicationController
  before_action :set_calender_event, only: [:show, :edit, :update, :destroy]

  # GET /calender_events
  # GET /calender_events.json
  def index
    @calender_events = CalenderEvent.all
  end

  # GET /calender_events/1
  # GET /calender_events/1.json
  def show
  end

  # GET /calender_events/new
  def new
    @calender_event = CalenderEvent.new
  end

  # GET /calender_events/1/edit
  def edit
  end

  # POST /calender_events
  # POST /calender_events.json
  def create
    @calender_event = CalenderEvent.new(calender_event_params)
    respond_to do |format|
      if @calender_event.save
        format.html { redirect_to @calender_event, notice: '予定を追加しました。' }
        format.json { render :show, status: :created, location: @calender_event }
      else
        format.html { render :new }
        format.json { render json: @calender_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /calender_events/1
  # PATCH/PUT /calender_events/1.json
  def update
    respond_to do |format|
      if @calender_event.update(calender_event_params)
        format.html { redirect_to @calender_event, notice: '予定を変更しました。' }
        format.json { render :show, status: :ok, location: @calender_event }
      else
        format.html { render :edit }
        format.json { render json: @calender_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /calender_events/1
  # DELETE /calender_events/1.json
  def destroy
    @calender_event.destroy
    respond_to do |format|
      format.html { redirect_to calender_events_url, notice: '予定を削除しました。' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_calender_event
      @calender_event = CalenderEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def calender_event_params
      params.require(:calender_event).permit(:title, :description, :start_date, :end_date)
    end
end
