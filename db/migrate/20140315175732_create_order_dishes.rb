class CreateOrderDishes < ActiveRecord::Migration
  def change
    create_table :order_dishes do |t|
      t.belongs_to :dish
      t.belongs_to :order

      t.timestamps
    end
  end
end
