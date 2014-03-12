class CreateCartItems < ActiveRecord::Migration
  def change
    create_table :cart_items do |t|
      t.integer :quantity, default: 1
      t.belongs_to :cart, allow_nil: false
      t.references :order_dish, allow_nil: false

      t.timestamps
    end
    add_index :cart_items, :cart_id
    add_index :cart_items, :order_dish_id
  end
end
