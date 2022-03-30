class RemoveSavedDeckIdsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :saved_deck_ids, :text
  end
end
