class AddCreatorToDecks < ActiveRecord::Migration[7.0]
  def change
    add_column :decks, :creator, :string
  end
end
