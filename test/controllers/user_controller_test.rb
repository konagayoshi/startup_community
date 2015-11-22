require 'test_helper'

class UserControllerTest < ActionController::TestCase
  setup do
    sign_in users(:joe)
  end
  test "should get index" do
    get :index
    assert_response :success
  end
end
