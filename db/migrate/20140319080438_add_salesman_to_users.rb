class AddSalesmanToUsers < ActiveRecord::Migration
  def change
    add_column :users, :salesman, :boolean, default: false
  end
end
