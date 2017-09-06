class DoctorAvailabilitiesController < ApplicationController
  before_action :authenticate_doctor!
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = DoctorAvailability.where(start: params[:start]..params[:end])
    #Slot.get_slots(params[:start], params[:end])

  end
  def new
    @event = DoctorAvailability.new
    @clinics = Clinic.all
  end
  def create
    # byebug
    @event = DoctorAvailability.new(event_params)
    @event.doctor_id = 1
    slots = Slot.get_slots(params[:doctor_availability][:start].to_datetime, params[:doctor_availability][:end].to_datetime)
    # raise slots[0].id.inspect
    slots.each do |c|
      # byebug
      Booking.create(clinic_id: params[:doctor_availability][:clinic_id], slot_id: c.id, doctor_id: Doctor.first.id, date: params[:doctor_availability][:start].to_datetime)
    end
    @event.save
  end
  def edit
    @clinics = Clinic.all
  end
  def update 
    binding.pry
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
