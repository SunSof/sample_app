require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  def setup
    @user = users(:michael)
  end

  test "should get new" do
    get users_new_url
    assert_response :success
  end

  test "should redirect edit when not logged in" do 
    get '/users/1/edit'
    assert_not flash.empty?
    assert_redirected_to login_url
  end
end
