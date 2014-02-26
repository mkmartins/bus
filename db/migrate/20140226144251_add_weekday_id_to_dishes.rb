class AddWeekdayIdToDishes < ActiveRecord::Migration
  def change
    add_column :dishes, :weekday_id, :string
  end
end
