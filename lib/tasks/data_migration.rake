namespace :data_migration do

  desc "Move Side Dishes to Dishes Table"
  task :move_side_dishes_to_dishes_table => :environment do
    SideDish.all.each_with_index do |side_dish, index|
      new_attributes = {
        :plate =>  side_dish.name,
        :is_side_dish => true,
        :parent_dish_id => side_dish.dish_id,
        :price => side_dish.price
      }
      Dish.create(new_attributes)
      puts "created #{index} side dish"
    end

  end

end