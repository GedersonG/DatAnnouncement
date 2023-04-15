require "test_helper"

class Auth::SessionsControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:user1)
  end

  test "should get new" do
    get new_session_url
    assert_response :success
  end

  test "should login an user by email" do
    post sessions_url, params: { login: 'email1@datage.com', password: 'secretaryship' }

    assert_redirected_to products_url
  end

  test "should login an user by username" do
    post sessions_url, params: { login: 'anyone', password: 'secretaryship' }

    assert_redirected_to products_url
  end
end
