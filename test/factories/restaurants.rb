FactoryGirl.define do
  factory :restaurant do
    name { Faker::Name.first_name }
    cuisine  { Faker::Name.last_name }
    dish   { Faker::last_name }
    ingredient { Faker::last_name }
    side_dish { Faker::last_name }
  end
end


