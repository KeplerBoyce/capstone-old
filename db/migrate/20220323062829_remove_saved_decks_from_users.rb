class RemoveSavedDecksFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :saved_decks, :text
  end
end
