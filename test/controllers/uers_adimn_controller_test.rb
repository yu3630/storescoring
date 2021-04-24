require 'test_helper'

class UersAdimnControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get uers_adimn_index_url
    assert_response :success
  end

end
