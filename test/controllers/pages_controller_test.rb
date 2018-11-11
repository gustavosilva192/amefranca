require 'test_helper'

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get transparency" do
    get pages_transparency_url
    assert_response :success
  end

end
