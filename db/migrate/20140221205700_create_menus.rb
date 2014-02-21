class CreateMenus < ActiveRecord::Migration
  def change
    create_table :menus do |t|
      t.string :plate
      t.decimal :price
      t.string :side_dish
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
