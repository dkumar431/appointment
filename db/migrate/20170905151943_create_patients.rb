class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :mobile
      t.string :email
      t.string :ssn

      t.timestamps
    end
  end
end
