class AddSavesToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :saves, :text
  end
end
