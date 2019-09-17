require 'test_helper'

class Admins::ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get admins_products_index_url
    assert_response :success
  end

  test "should get destroy" do
    get admins_products_destroy_url
    assert_response :success
  end

end
