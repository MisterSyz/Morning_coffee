require 'test_helper'

class ShoppingControllerTest < ActionController::TestCase
  test "should get allItem" do
    get :allItem
    assert_response :success
  end

  test "should get singleProduct" do
    get :singleProduct
    assert_response :success
  end

end
