class CreateClinicDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :clinic_doctors do |t|
      t.integer :clinic_id
      t.integer :doctor_id

      t.timestamps
    end
  end
end
