class EventsController < ApplicationController
    before_action :set_event, only: %i[ show edit update destroy ]

    # GET /events or /events.json
    def index
      @events = Event.all
    end

    # GET /events/1 or /events/1.json
    def show

    end

    def attendance
      @attendancerecords = Attendancerecord.all
    end
    # GET /events/new
    def new
      @event = Event.new(attendancerecord_id: params[:attendancerecord_id])
    end

    # GET /events/1/edit
    def edit
      if params[:attendancerecord_id]
        attendancerecord = Attendancerecord.find_by(id: params[:attendancerecord_id])
        if attendancerecord.nil?
          redirect_to attendancerecords_path, altert: "Record not found"
        else
          @event = attendancerecord.events.find_by(id: params[:id])
          redirect_to attendancerecord_events_path(attendancerecord), alert:  "Event not found." if @event.nil?
        end
      else
        @event = Event.find(params[:id])
      end




    end

    def delete
      @event = Event.find(params[:id])
    end

    # POST /events or /events.json
    def create
      @event = Event.new(event_params)

      respond_to do |format|
        if @event.save
          format.html { redirect_to events_path, notice: "Event was successfully created." }
          format.json { render :show, status: :created, location: @event }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end
    end

    # PATCH/PUT /events/1 or /events/1.json
    def update
      respond_to do |format|
        if @event.update(event_params)
          format.html { redirect_to events_path, notice: "Event was successfully updated." }
          format.json { render :show, status: :ok, location: @event }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @event.errors, status: :unprocessable_entity }
        end
      end

    end

    # DELETE /events/1 or /events/1.json
    def destroy
      @event.destroy
      respond_to do |format|
        format.html { redirect_to events_path, notice: "Event was successfully destroyed." }
        format.json { head :no_content }
      end
    end

    private
      # Use callbacks to share common setup or constraints between actions.
      def set_event
        @event = Event.find(params[:id])
      end

      # Only allow a list of trusted parameters through.
      def event_params
        params.require(:event).permit(:name, :info, :date, :time, :attendancerecord_id)
      end
  end
