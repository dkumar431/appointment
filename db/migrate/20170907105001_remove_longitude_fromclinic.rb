class RemoveLongitudeFromclinic < ActiveRecord::Migration[5.0]
  def change
    remove_column :clinics, :longitue
  end
end
