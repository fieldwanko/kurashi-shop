require 'test_helper'

class AddressMenusControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get address_menus_new_url
    assert_response :success
  end

  test "should get create" do
    get address_menus_create_url
    assert_response :success
  end

  test "should get destroy" do
    get address_menus_destroy_url
    assert_response :success
  end

end
