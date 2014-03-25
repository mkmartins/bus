# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

3.times do
  Restaurant.create(name: Faker::Name.first_name)
end

Restaurant.all.each do |p|
  6.times do
    dish = p.dishes.create(plate: Faker::Name.last_name)
    10.times do
      dish.ingredients.create(name: Faker::Name.last_name)
      1.times do
        side_dish = dish.side_dishes.create(plate: Faker::Name.first_name, is_side_dish: true)
        5.times do
          side_dish.ingredients.create(name:Faker::Name.last_name)
        end
      end
    end
  end
end

user = User.create(:email => 'admin@bus.bus', :password => 'changeme', :password_confirmation => 'changeme')
user.has_role(:admin)

user = User.create(:email => 'sales@bus.bus', :password => 'changeme', :password_confirmation => 'changeme')
user.has_role(:salesman)
