require 'test_helper'

class PeachesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get peaches_index_url
    assert_response :success
  end

  test "should get show" do
    get peaches_show_url
    assert_response :success
  end

  test "should get create" do
    get peaches_create_url
    assert_response :success
  end

  test "should get destroy" do
    get peaches_destroy_url
    assert_response :success
  end

  test "should get update" do
    get peaches_update_url
    assert_response :success
  end

end
