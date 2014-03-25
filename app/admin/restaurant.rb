  ActiveAdmin.register Restaurant do

    sidebar "Restaurant Details", only: [:show, :edit] do
      ul do
        li link_to("Dishes", admin_restaurant_dishes_path(restaurant))
      end
    end

  end

  ActiveAdmin.register Dish do
    belongs_to :restaurant
    # navigation_menu :restaurant
  end