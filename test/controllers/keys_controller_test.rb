require 'test_helper'

class KeysControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get keys_index_url
    assert_response :success
  end

  test "should get show" do
    get keys_show_url
    assert_response :success
  end

  test "should get new" do
    get keys_new_url
    assert_response :success
  end

  test "should get create" do
    get keys_create_url
    assert_response :success
  end

end
