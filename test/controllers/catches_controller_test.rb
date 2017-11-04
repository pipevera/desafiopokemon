require 'test_helper'

class CatchesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get catches_index_url
    assert_response :success
  end

end
