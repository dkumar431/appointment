class AddClinicIdToStaff < ActiveRecord::Migration[5.0]
  def change
    add_column :staffs, :clinic_id, :integer
  end
end
