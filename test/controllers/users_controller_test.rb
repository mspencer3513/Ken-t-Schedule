require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:users)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post :create, user: { active: @user.active, address2: @user.address2, address: @user.address, allow_reservation: @user.allow_reservation, city: @user.city, contact_ph1: @user.contact_ph1, contact_ph2: @user.contact_ph2, email_address2: @user.email_address2, email_address: @user.email_address, firstname: @user.firstname, group_org_name: @user.group_org_name, lastname: @user.lastname, password: @user.password, userid: @user.userid, zip: @user.zip }
    end

    assert_redirected_to user_path(assigns(:user))
  end

  test "should show user" do
    get :show, id: @user
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user
    assert_response :success
  end

  test "should update user" do
    patch :update, id: @user, user: { active: @user.active, address2: @user.address2, address: @user.address, allow_reservation: @user.allow_reservation, city: @user.city, contact_ph1: @user.contact_ph1, contact_ph2: @user.contact_ph2, email_address2: @user.email_address2, email_address: @user.email_address, firstname: @user.firstname, group_org_name: @user.group_org_name, lastname: @user.lastname, password: @user.password, userid: @user.userid, zip: @user.zip }
    assert_redirected_to user_path(assigns(:user))
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete :destroy, id: @user
    end

    assert_redirected_to users_path
  end
end
