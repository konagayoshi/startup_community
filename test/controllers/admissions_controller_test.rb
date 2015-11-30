require 'test_helper'

class AdmissionsControllerTest < ActionController::TestCase
  setup do
    sign_in users(:joe)
    @university = universities(:one)
#    @admission = admissions(:one)
    @admission = admissions(:one)
  end

  test "should get index" do
    get :index, :university_id => @university
    assert_response :success
    assert_not_nil assigns(:admissions)
  end

  test "should get new" do
    get :new, :university_id => @university
    assert_response :success
  end

  test "should create admission" do
    assert_difference('Admission.count') do
      post :create, admission: { contact: @admission.contact, content: @admission.content, demands: @admission.demands, end_time: @admission.end_time, requirements: @admission.requirements, start_time: @admission.start_time, title: @admission.title }, :university_id=> @university
    end

    assert_redirected_to university_admission_path(@university, assigns(:admission))
  end

  test "should show admission" do
    get :show, id: @admission, :university_id => @university
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @admission, :university_id => @university
    assert_response :success
  end

  test "should update admission" do
    patch :update, id: @admission, admission: { contact: @admission.contact, content: @admission.content, demands: @admission.demands, end_time: @admission.end_time, requirements: @admission.requirements, start_time: @admission.start_time, title: @admission.title}, :university_id => @university
    assert_redirected_to university_admission_path(@university, assigns(:admission))
  end

  test "should destroy admission" do
    assert_difference('Admission.count', -1) do
      delete :destroy, id: @admission, :university_id => @university
    end

    assert_redirected_to university_admission_path(@university, assigns(:admission))
  end
end
