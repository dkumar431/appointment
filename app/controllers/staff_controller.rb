class StaffController < ApplicationController
  def index
   @doctors = current_staff.doctors
  end
end
