class AddUserIdToSaves < ActiveRecord::Migration[7.0]
  def change
    add_column :saves, :user_id, :integer
  end
end
