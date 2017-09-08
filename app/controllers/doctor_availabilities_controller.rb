class DoctorAvailabilitiesController < ApplicationController
  before_action :authenticate_doctor!
  before_action :set_event, only: [:show, :edit, :update, :destroy]

  def index
    @events = DoctorAvailability.where(start: params[:start]..params[:end])
    #Slot.get_slots(params[:start], params[:end])

  end
  def new
    @event = DoctorAvailability.new
    #@clinics = current_doctor.clinics
    # @clinics = Doctor.joins("inner join clinic_doctors cd on doctors.id = cd.id inner join clinics c on c.id = cd.clinic_id inner join addresses a on a.clinic_id = c.id").
    #   select("c.name ||  ' - ' || a.line1 as full_address").
    #   where("doctors.id = #{current_doctor.id}")
    @clinics1 = Clinic.joins(:clinic_doctors).
        select("clinics.id, clinics.name, clinics.address_line1").
        where("clinic_doctors.doctor_id = #{current_doctor.id}")
    @clinics = @clinics1.map {|clinic| [clinic.name.to_s + " - " + clinic.address_line1.to_s, clinic.id] }    
    
    
  end
  def create
    @event = DoctorAvailability.new(event_params)
    @event.doctor_id = current_doctor.id

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
