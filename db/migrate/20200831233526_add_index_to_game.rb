class AddIndexToGame < ActiveRecord::Migration[6.0]
  def change
    add_index :games, :slug, unique: true
  end
end
