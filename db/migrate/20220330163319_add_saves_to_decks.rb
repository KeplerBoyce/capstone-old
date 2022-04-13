class AddSavesToDecks < ActiveRecord::Migration[7.0]
  def change
    add_column :decks, :saves, :integer
  end
end
