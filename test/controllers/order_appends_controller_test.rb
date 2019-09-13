require 'test_helper'

class OrderAppendsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get order_appends_create_url
    assert_response :success
  end

  test "should get show" do
    get order_appends_show_url
    assert_response :success
  end

  test "should get update" do
    get order_appends_update_url
    assert_response :success
  end

end
