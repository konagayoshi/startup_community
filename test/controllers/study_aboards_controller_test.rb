require 'test_helper'

class StudyAboardsControllerTest < ActionController::TestCase
  setup do
    sign_in users(:joe)
    @university = universities(:one)
    @study_aboard = @university.study_aboards(:one)
#    @study_aboard = study_aboards(:one)
  end

  test "should get index" do
    get :index, :university_id => @university
    assert_response :success
    assert_not_nil assigns(:study_aboards)
  end

  test "should get new" do
    get :new, :university_id => @university
    assert_response :success
  end

  test "should create study_aboard" do
    assert_difference('StudyAboard.count') do
      post :create, study_aboard: { contact: @study_aboard.contact, content: @study_aboard.content, destination: @study_aboard.destination, duration: @study_aboard.duration, requirements: @study_aboard.requirements, sponsor: @study_aboard.sponsor, start_time: @study_aboard.start_time, title: @study_aboard.title, university_id: @study_aboard.university_id }
    end

    assert_redirected_to study_aboard_path(assigns(:study_aboard))
  end

  test "should show study_aboard" do
    get :show, id: @study_aboard, :university_id => @university
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @study_aboard, :university_id => @university
    assert_response :success
  end

  test "should update study_aboard" do
    patch :update, id: @study_aboard, study_aboard: { contact: @study_aboard.contact, content: @study_aboard.content, destination: @study_aboard.destination, duration: @study_aboard.duration, requirements: @study_aboard.requirements, sponsor: @study_aboard.sponsor, start_time: @study_aboard.start_time, title: @study_aboard.title, university_id: @study_aboard.university_id }
    assert_redirected_to study_aboard_path(assigns(:study_aboard))
  end

  test "should destroy study_aboard" do
    assert_difference('StudyAboard.count', -1) do
      delete :destroy, id: @study_aboard, :university_id => @university
    end

    assert_redirected_to study_aboards_path
  end
end
