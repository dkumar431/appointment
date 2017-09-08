class AddAddressIdToClinic < ActiveRecord::Migration[5.0]
  def change
    remove_column :clinics, :address_line1
    remove_column :clinics, :address_line2
    remove_column :clinics, :city
    remove_column :clinics, :state
    remove_column :clinics, :zip
    remove_column :clinics, :longitue
    remove_column :clinics, :latitude
    add_reference :clinics, :address, index: true
    add_column :addresses, :lat, :decimal, {:precision=>10, :scale=>6}
    add_column :addresses, :lng, :decimal, {:precision=>10, :scale=>6}
  end
end
