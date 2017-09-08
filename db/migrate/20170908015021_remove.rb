class Remove < ActiveRecord::Migration[5.0]
  def change
    remove_reference(:clinics , :address, index: true)
    add_reference :addresses, :clinic, index: true
  end
end
