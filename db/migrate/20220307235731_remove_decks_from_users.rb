class RemoveDecksFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :decks, :string
  end
end
