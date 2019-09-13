require 'test_helper'

class SellUsers::ProductsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sell_users_products_index_url
    assert_response :success
  end

  test "should get show" do
    get sell_users_products_show_url
    assert_response :success
  end

  test "should get new" do
    get sell_users_products_new_url
    assert_response :success
  end

  test "should get create" do
    get sell_users_products_create_url
    assert_response :success
  end

  test "should get edit" do
    get sell_users_products_edit_url
    assert_response :success
  end

  test "should get update" do
    get sell_users_products_update_url
    assert_response :success
  end

  test "should get destroy" do
    get sell_users_products_destroy_url
    assert_response :success
  end

end
