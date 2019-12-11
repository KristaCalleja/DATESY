require 'test_helper'

class User::AvailabilityPicksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_availability_picks_new_url
    assert_response :success
  end

end
