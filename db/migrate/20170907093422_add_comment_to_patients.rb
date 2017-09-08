class AddCommentToPatients < ActiveRecord::Migration[5.0]
  def change
    add_column :patients, :comment, :text
  end
end
