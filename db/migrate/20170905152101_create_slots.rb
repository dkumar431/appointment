class CreateSlots < ActiveRecord::Migration[5.0]
  def change
    create_table :slots do |t|
      t.time :start_time
      t.time :end_time
      t.boolean :status

      t.timestamps
    end
  end
end
