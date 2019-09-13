require 'test_helper'

class SellUsers::OrderDetailsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sell_users_order_details_index_url
    assert_response :success
  end

end
