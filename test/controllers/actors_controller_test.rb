require 'test_helper'

class ActorsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get actors_new_url
    assert_response :success
  end

  test "should get edit" do
    get actors_edit_url
    assert_response :success
  end

end
