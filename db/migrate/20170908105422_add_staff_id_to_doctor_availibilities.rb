class AddStaffIdToDoctorAvailibilities < ActiveRecord::Migration[5.0]
  def change
    add_column(:doctor_availabilities, :staff_id, :int)
  end
end
