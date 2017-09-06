class CreateJoinTableDoctorClinic < ActiveRecord::Migration[5.0]
  def change
    create_join_table :doctors, :clinics do |t|
      # t.index [:doctor_id, :clinic_id]
      # t.index [:clinic_id, :doctor_id]
    end
  end
end
