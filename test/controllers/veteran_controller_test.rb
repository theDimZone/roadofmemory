require 'test_helper'

class VeteranControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get veteran_index_url
    assert_response :success
  end

end
