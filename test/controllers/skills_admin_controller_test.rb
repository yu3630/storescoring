require 'test_helper'

class SkillsAdminControllerTest < ActionDispatch::IntegrationTest
  test 'should get index' do
    get skills_admin_index_url
    assert_response :success
  end
end
