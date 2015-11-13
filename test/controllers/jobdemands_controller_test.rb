require 'test_helper'

class JobdemandsControllerTest < ActionController::TestCase
  setup do
    @jobdemand = jobdemands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:jobdemands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create jobdemand" do
    assert_difference('Jobdemand.count') do
      post :create, jobdemand: {  }
    end

    assert_redirected_to jobdemand_path(assigns(:jobdemand))
  end

  test "should show jobdemand" do
    get :show, id: @jobdemand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @jobdemand
    assert_response :success
  end

  test "should update jobdemand" do
    patch :update, id: @jobdemand, jobdemand: {  }
    assert_redirected_to jobdemand_path(assigns(:jobdemand))
  end

  test "should destroy jobdemand" do
    assert_difference('Jobdemand.count', -1) do
      delete :destroy, id: @jobdemand
    end

    assert_redirected_to jobdemands_path
  end
end
