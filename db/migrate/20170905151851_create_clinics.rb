class CreateClinics < ActiveRecord::Migration[5.0]
  def change
    create_table :clinics do |t|
      t.string :name
      t.string :address_line1
      t.string :address_line2
      t.string :city
      t.string :state
      t.bigint :zip
      t.decimal :longitue
      t.decimal :latitude
      t.bigint :zip

      t.timestamps
    end
  end
end
