require 'test_helper'

class JobdemandControllerTest < ActionController::TestCase
  test "should get jdlist" do
    get :jdlist
    assert_response :success
  end

  test "should get jddetail" do
    get :jddetail
    assert_response :success
  end

end
