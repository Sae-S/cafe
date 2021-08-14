require 'test_helper'

class MenuControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get menu_new_url
    assert_response :success
  end

  test "should get creaate" do
    get menu_creaate_url
    assert_response :success
  end

end
