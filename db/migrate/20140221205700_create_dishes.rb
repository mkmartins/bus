class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :plate
      t.decimal :price
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
