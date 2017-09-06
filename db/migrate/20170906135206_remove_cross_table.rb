class RemoveCrossTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :clinics_doctors
  end
end
