class CreateDoctors < ActiveRecord::Migration[5.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :regdno
      t.string :mobile
      t.string :email
      t.string :specialization
      t.float :rating

      t.timestamps
    end
  end
end
