class AddSavedDecksToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :saved_decks, :text
  end
end
