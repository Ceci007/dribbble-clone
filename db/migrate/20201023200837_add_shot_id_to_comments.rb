class AddShotIdToComments < ActiveRecord::Migration[6.0]
  def change
    add_column :comments, :shot_id, :integer
  end
end
