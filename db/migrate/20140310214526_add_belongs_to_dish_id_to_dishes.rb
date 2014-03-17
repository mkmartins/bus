class AddBelongsToDishIdToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :belongs_to_dish_id, :integer
  end
end
