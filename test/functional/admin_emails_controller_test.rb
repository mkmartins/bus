require 'test_helper'

class AdminEmailsControllerTest < ActionController::TestCase
  setup do
    @admin_email = admin_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:admin_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create admin_email" do
    assert_difference('AdminEmail.count') do
      post :create, admin_email: { email: @admin_email.email, login: @admin_email.login, name: @admin_email.name }
    end

    assert_redirected_to admin_email_path(assigns(:admin_email))
  end

  test "should show admin_email" do
    get :show, id: @admin_email
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admin_email
    assert_response :success
  end

  test "should update admin_email" do
    put :update, id: @admin_email, admin_email: { email: @admin_email.email, login: @admin_email.login, name: @admin_email.name }
    assert_redirected_to admin_email_path(assigns(:admin_email))
  end

  test "should destroy admin_email" do
    assert_difference('AdminEmail.count', -1) do
      delete :destroy, id: @admin_email
    end

    assert_redirected_to admin_emails_path
  end
end
