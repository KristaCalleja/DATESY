require 'test_helper'

class User::MatchesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_matches_new_url
    assert_response :success
  end

end
