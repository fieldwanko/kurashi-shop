require 'test_helper'

class PresentAppendsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get present_appends_show_url
    assert_response :success
  end

end
