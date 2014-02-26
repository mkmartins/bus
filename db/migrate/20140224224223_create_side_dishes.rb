class CreateSideDishes < ActiveRecord::Migration
  def change
    create_table :side_dishes do |t|
      t.string :name
      t.integer :dish_id

      t.timestamps
    end
  end
end
