require 'test_helper'

class OrderControllerTest < ActionController::TestCase
  test "should get selection" do
    get :selection
    assert_response :success
  end

  test "should get detail" do
    get :detail
    assert_response :success
  end

end
