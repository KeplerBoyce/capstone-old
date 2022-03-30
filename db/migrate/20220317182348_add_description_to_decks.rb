class AddDescriptionToDecks < ActiveRecord::Migration[7.0]
  def change
    add_column :decks, :description, :text
  end
end
