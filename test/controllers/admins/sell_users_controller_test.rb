require 'test_helper'

class Admins::SellUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_sell_users_index_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_sell_users_destroy_url
    assert_response :success
  end

end
