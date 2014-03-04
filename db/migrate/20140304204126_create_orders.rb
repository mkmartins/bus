class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.boolean :order_ingredient

      t.timestamps
    end
  end
end
