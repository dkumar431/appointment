class RevertAllAddressChanges < ActiveRecord::Migration[5.0]
  def change
    drop_table :addresses
    add_column(:clinics, :address_line1, :string)
    add_column(:clinics, :address_line2, :string)
    add_column(:clinics, :city, :string)
    add_column(:clinics, :state, :string)
    add_column(:clinics, :zip, :string)
  end
end
