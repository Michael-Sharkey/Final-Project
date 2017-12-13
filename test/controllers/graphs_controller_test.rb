require 'test_helper'

class GraphsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get graphs_index_url
    assert_response :success
  end

  test "should get data" do
    get graphs_data_url
    assert_response :success
  end

end
