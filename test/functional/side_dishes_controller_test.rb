require 'test_helper'

class SideDishesControllerTest < ActionController::TestCase
  setup do
    @side_dish = side_dishes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:side_dishes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create side_dish" do
    assert_difference('SideDish.count') do
      post :create, side_dish: { name: @side_dish.name }
    end

    assert_redirected_to side_dish_path(assigns(:side_dish))
  end

  test "should show side_dish" do
    get :show, id: @side_dish
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @side_dish
    assert_response :success
  end

  test "should update side_dish" do
    put :update, id: @side_dish, side_dish: { name: @side_dish.name }
    assert_redirected_to side_dish_path(assigns(:side_dish))
  end

  test "should destroy side_dish" do
    assert_difference('SideDish.count', -1) do
      delete :destroy, id: @side_dish
    end

    assert_redirected_to side_dishes_path
  end
end
