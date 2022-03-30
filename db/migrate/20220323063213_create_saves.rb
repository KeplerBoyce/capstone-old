class CreateSaves < ActiveRecord::Migration[7.0]
  def change
    create_table :saves do |t|
      t.integer :deck_id

      t.timestamps
    end
  end
end
