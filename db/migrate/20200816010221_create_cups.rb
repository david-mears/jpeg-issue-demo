class CreateCups < ActiveRecord::Migration[6.0]
  def change
    create_table :cups do |t|
      t.integer :type
      t.string :image

      t.timestamps
    end
  end
end
