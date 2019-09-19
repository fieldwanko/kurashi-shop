require 'test_helper'

class Admins::CouponsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get admins_coupons_create_url
    assert_response :success
  end

end
