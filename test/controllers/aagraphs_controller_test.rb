require 'test_helper'

class AagraphsControllerTest < ActionDispatch::IntegrationTest
  test "should get _show" do
    get aagraphs__show_url
    assert_response :success
  end

  test "should get _index" do
    get aagraphs__index_url
    assert_response :success
  end

end
