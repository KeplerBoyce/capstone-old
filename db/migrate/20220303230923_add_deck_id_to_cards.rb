class AddDeckIdToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :deck_id, :integer
  end
end
