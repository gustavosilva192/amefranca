require 'test_helper'

class NoticiasControllerTest < ActionDispatch::IntegrationTest
  test "should get galery" do
    get noticias_galery_url
    assert_response :success
  end

end
