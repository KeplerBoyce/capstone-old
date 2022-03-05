class CreateDecks < ActiveRecord::Migration[7.0]
  def change
    create_table :decks do |t|
      t.string :title
      t.text :cards

      t.timestamps
    end
  end
end
