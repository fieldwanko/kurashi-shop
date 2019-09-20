require 'test_helper'

class UserRequestsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_requests_index_url
    assert_response :success
  end

  test "should get destroy" do
    get user_requests_destroy_url
    assert_response :success
  end

end
