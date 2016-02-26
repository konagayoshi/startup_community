require 'test_helper'

class UniversitiesControllerTest < ActionController::TestCase
  setup do
    sign_in users(:joe)
    @university = universities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:universities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create university" do
    assert_difference('University.count') do
      post :create, university: { checked: @university.checked, contact: @university.contact, cooperation: @university.cooperation, introduction: @university.introduction, location: @university.location, name: @university.name, rank: @university.rank, reputation: @university.reputation }
    end

    assert_redirected_to university_path(assigns(:university))
  end

#  test "should show university" do
#    get :show, id: @university
#    assert_response :success
#  end

  test "should get edit" do
    get :edit, id: @university
    assert_response :success
  end

  test "should update university" do
    patch :update, id: @university, university: { checked: @university.checked, contact: @university.contact, cooperation: @university.cooperation, introduction: @university.introduction, location: @university.location, name: @university.name, rank: @university.rank, reputation: @university.reputation }
    assert_redirected_to university_path(assigns(:university))
  end

  test "should destroy university" do
    assert_difference('University.count', -1) do
      delete :destroy, id: @university
    end

    assert_redirected_to universities_path
  end
end
