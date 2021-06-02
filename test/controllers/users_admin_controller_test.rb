require 'test_helper'

class UsersAdminControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get users_admin_index_url
    assert_response :success
  end
end
