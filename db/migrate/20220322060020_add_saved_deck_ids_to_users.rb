class AddSavedDeckIdsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :saved_deck_ids, :text
  end
end
