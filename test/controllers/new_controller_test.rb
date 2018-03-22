require 'test_helper'

class NewControllerTest < ActionDispatch::IntegrationTest
  test "should get sessions" do
    get new_sessions_url
    assert_response :success
  end

  test "should get new" do
    get new_new_url
    assert_response :success
  end

end
