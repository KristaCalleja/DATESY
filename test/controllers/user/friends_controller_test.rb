require 'test_helper'

class User::FriendsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_friends_index_url
    assert_response :success
  end

end
