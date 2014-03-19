class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :message
      t.string :adress_line_1
      t.string :adress_line_2
      t.string :city
      t.string :state
      t.string :zip

      t.timestamps
    end
  end
end
