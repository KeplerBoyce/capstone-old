class RemoveSavedFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :saved, :string
  end
end
