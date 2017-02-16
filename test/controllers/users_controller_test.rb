require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:one)
  end

  test "should get index" do
    get users_url
    assert_response :success
  end

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference('User.count') do
      post users_url, params: { user: { course_id: @user.course_id, document_number: @user.document_number, email: @user.email, name: @user.name, phone: @user.phone, role_id: @user.role_id, special_need_id: @user.special_need_id, user_type_id: @user.user_type_id } }
    end

    assert_redirected_to user_url(User.last)
  end

  test "should show user" do
    get user_url(@user)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_url(@user)
    assert_response :success
  end

  test "should update user" do
    patch user_url(@user), params: { user: { course_id: @user.course_id, document_number: @user.document_number, email: @user.email, name: @user.name, phone: @user.phone, role_id: @user.role_id, special_need_id: @user.special_need_id, user_type_id: @user.user_type_id } }
    assert_redirected_to user_url(@user)
  end

  test "should destroy user" do
    assert_difference('User.count', -1) do
      delete user_url(@user)
    end

    assert_redirected_to users_url
  end
end
