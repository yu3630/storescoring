require 'test_helper'

class AerasControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get aeras_show_url
    assert_response :success
  end

end
