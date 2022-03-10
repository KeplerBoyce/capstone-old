class AddSavedToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :saved, :text
  end
end
