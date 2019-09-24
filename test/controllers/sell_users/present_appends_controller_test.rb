require 'test_helper'

class SellUsers::PresentAppendsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sell_users_present_appends_index_url
    assert_response :success
  end

  test "should get update" do
    get sell_users_present_appends_update_url
    assert_response :success
  end

end
