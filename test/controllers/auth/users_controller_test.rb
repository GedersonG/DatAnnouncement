require "test_helper"

class Auth::UsersControllerTest < ActionDispatch::IntegrationTest

  test "should get new" do
    get new_user_url
    assert_response :success
  end

  test "should create user" do
    assert_difference("User.count") do
      post users_url, params: { user: { email: 'anything@datage.com', username: 'Fonza', password: 'Password' } }
    end

    assert_redirected_to products_url
  end
end
