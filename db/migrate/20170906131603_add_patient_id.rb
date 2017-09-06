class AddPatientId < ActiveRecord::Migration[5.0]
  def change
    add_column :bookings, :patient_id, :integer
  end
end
