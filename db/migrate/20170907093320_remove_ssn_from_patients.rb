class RemoveSsnFromPatients < ActiveRecord::Migration[5.0]
  def change
    remove_column :patients, :ssn, :string
  end
end
