require 'test_helper'

class CuisinesControllerTest < ActionController::TestCase
  setup do
    @cuisine = cuisines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cuisines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cuisine" do
    assert_difference('Cuisine.count') do
      post :create, cuisine: { name: @cuisine.name }
    end

    assert_redirected_to cuisine_path(assigns(:cuisine))
  end

  test "should show cuisine" do
    get :show, id: @cuisine
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cuisine
    assert_response :success
  end

  test "should update cuisine" do
    put :update, id: @cuisine, cuisine: { name: @cuisine.name }
    assert_redirected_to cuisine_path(assigns(:cuisine))
  end

  test "should destroy cuisine" do
    assert_difference('Cuisine.count', -1) do
      delete :destroy, id: @cuisine
    end

    assert_redirected_to cuisines_path
  end
end
