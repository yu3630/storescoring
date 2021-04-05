require 'test_helper'

class PegesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get peges_index_url
    assert_response :success
  end

end
