class DoctorAvailabilitiesController < ApplicationController
  before_action :authenticate_doctor!
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = DoctorAvailability.where(start: params[:start]..params[:end])
    #Slot.get_slots(params[:start], params[:end])

  end
  def new
    @event = DoctorAvailability.new
    @clinics = current_doctor.clinics
  end
  def create
    @event = DoctorAvailability.new(event_params)
    @event.doctor_id = 1

    slots = Slot.get_slots(params[:doctor_availability][:start].to_datetime, params[:doctor_availability][:end].to_datetime)
    slots.each do |c|    
      Booking.create(clinic_id: params[:doctor_availability][:clinic_id], slot_id: c.id, doctor_id: current_doctor.id, date: params[:doctor_availability][:start].to_date)
    end
    @event.save
  end
  def edit
    @clinics = Clinic.all
  end
  def update
    @event.update(event_params)
  end
  def destroy
    @event.destroy
  end  


  private
  def set_event
    @event = DoctorAvailability.find(params[:id])
  end

  def event_params
    params.require(:doctor_availability).permit(:clinic_id, :start, :end, :color)
  end

end
