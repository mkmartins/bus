require "test_helper"

class RestaurantsControllerTest < ActionController::TestCase
  
  def setup
    @restaurant = create(:restaurant)
  end

  def test_it_displays_index_with_restaurants
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant)
  end

 def test_it_shows_a_restaurant
    get :show, id: @restaurant
    refute_nil assigns(:restaurant)
    refute_nil assigns(:cuisine)
    refute_nil assigns(:dish)
    refute_nil assigns(:side_dish)
    refute_nil assigns(:ingredient)
 end
  

  def test_it_shows_a_new_individual_restaurant
    get :new
    assert_response :success
    assert_template :new
    refute_nil assigns(:restaurant)
  end

  def test_edit_restaurant_page
    get :edit, id: @restaurant
    assert_response :success
    refute_nil assigns(:restaurant)
  end

  def test_successful_restaurant_creation
    assert_difference('Restaurant.count', 1) do
      restaurant:create, restaurant: attributes_for(:restaurant)
    end
    assert_response :redirect
    refute_nil assigns(:restaurant)
    assert_redirected_to restaurant_path(assigns(:restaurant))
    assert_not_nil flash[:notice]
    # Over testing, but possible. May be useful if logic is in message?
    # assert_equal flash[:notice], 'Post was successfully created.'
  end

  def test_restaurant_creation_is_unsuccessful_and_re_renders_form
    post :create, restaurant: attributes_for(:restaurant, title: nil)
    assert_response :success
    assert_template :new
    refute_nil assigns(:restaurant)
  end

  def test_successful_restaurant_update
    put :update,  id: @restaurant.id, restaurant: attributes_for(:restaurant, title: "Updated Title")
    assert_response :redirect
    refute_nil assigns(:restaurant)
    assert_redirected_to restaurant_path(assigns(:restaurant))
    assert_not_nil flash[:notice]
  end

  def test_post_update_is_unsuccessful
    put :update, id: @restaurant.id, restaurant: attributes_for(:restaurant, title: nil)
    assert_response :success
    assert_template :edit
    refute_nil assigns(:restaurant)
  end

  def test_restaurant_gets_destroyed
    assert_difference('Restaurant.count', -1) do
      delete :destroy, id: @restaurant.id
    end
    assert_response :redirect
    assert_redirected_to restaurants_path
  end

end
