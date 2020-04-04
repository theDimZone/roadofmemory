require 'test_helper'

class TroopControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get troop_show_url
    assert_response :success
  end

  test "should get index" do
    get troop_index_url
    assert_response :success
  end

  test "should get add" do
    get troop_add_url
    assert_response :success
  end

end
