require 'test_helper'

class JournalsControllerTest < ActionDispatch::IntegrationTest
  test "should get resources" do
    get journals_resources_url
    assert_response :success
  end

end
