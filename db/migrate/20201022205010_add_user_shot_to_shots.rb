class AddUserShotToShots < ActiveRecord::Migration[6.0]
  def change
    add_column :shots, :user_shot, :string
  end
end
