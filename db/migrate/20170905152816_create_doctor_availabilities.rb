class CreateDoctorAvailabilities < ActiveRecord::Migration[5.0]
  def change
    create_table :doctor_availabilities do |t|
      t.references :doctor, foreign_key: true
      t.references :clinic, foreign_key: true
      t.datetime :start
      t.datetime :end
      t.string :color

      t.timestamps
    end
  end
end
