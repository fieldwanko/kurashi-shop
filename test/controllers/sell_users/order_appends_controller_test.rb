require 'test_helper'

class SellUsers::OrderAppendsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sell_users_order_appends_index_url
    assert_response :success
  end

  test "should get show" do
    get sell_users_order_appends_show_url
    assert_response :success
  end

  test "should get update" do
    get sell_users_order_appends_update_url
    assert_response :success
  end

end
