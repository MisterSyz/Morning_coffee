require 'test_helper'

class PayControllerTest < ActionController::TestCase
  test "should get shoppingCart" do
    get :shoppingCart
    assert_response :success
  end

  test "should get checkout" do
    get :checkout
    assert_response :success
  end

end
