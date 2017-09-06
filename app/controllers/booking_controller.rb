class BookingController < ApplicationController
  before_action :set_patient, only: [:show, :edit, :update, :destroy]
  
  def new
      @booking = Booking.new
      @patient = Patient.new
  end
  def create 
    @patient = Patient.new(patient_params)
    @patient.save
    @booking = Booking.find(params[:booking_id])
    @booking.patient_id = @patient.id
    @booking.save
  end

  def show
  end
  private
  def set_patient
    @patient = Patient.find(params[:id])
  end

  def patient_params
    params.permit(:name, :mobile, :email, :ssn)
  end

end
