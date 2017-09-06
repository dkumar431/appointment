class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :patient, foreign_key: true
      t.references :clinic, foreign_key: true
      t.references :doctor, foreign_key: true
      t.references :slot, foreign_key: true
      t.date :date

      t.timestamps
    end
  end
end
