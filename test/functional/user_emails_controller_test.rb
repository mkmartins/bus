require 'test_helper'

class UserEmailsControllerTest < ActionController::TestCase
  setup do
    @user_email = user_emails(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_emails)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_email" do
    assert_difference('UserEmail.count') do
      post :create, user_email: { email: @user_email.email, login: @user_email.login, name: @user_email.name }
    end

    assert_redirected_to user_email_path(assigns(:user_email))
  end

  test "should show user_email" do
    get :show, id: @user_email
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_email
    assert_response :success
  end

  test "should update user_email" do
    put :update, id: @user_email, user_email: { email: @user_email.email, login: @user_email.login, name: @user_email.name }
    assert_redirected_to user_email_path(assigns(:user_email))
  end

  test "should destroy user_email" do
    assert_difference('UserEmail.count', -1) do
      delete :destroy, id: @user_email
    end

    assert_redirected_to user_emails_path
  end
end
