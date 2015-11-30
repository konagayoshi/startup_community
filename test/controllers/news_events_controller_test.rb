require 'test_helper'

class NewsEventsControllerTest < ActionController::TestCase
  setup do
    sign_in users(:joe)
    @university = universities(:one)
    @news_event = news_events(:one)
  end

  test "should get index" do
    get :index, :university_id => @university
    assert_response :success
    assert_not_nil assigns(:news_events)
  end

  test "should get new" do
    get :new, :university_id => @university
    assert_response :success
  end

  test "should create news_event" do
    assert_difference('NewsEvent.count') do
      post :create, news_event: { author: @news_event.author, content: @news_event.content, post_date: @news_event.post_date, title: @news_event.title}, :university_id => @university
    end

    assert_redirected_to university_news_event_path(@university, assigns(:news_event))
  end

  test "should show news_event" do
    get :show, id: @news_event, :university_id => @university
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @news_event, :university_id => @university
    assert_response :success
  end

  test "should update news_event" do
    patch :update, id: @news_event, news_event: { author: @news_event.author, content: @news_event.content, post_date: @news_event.post_date, title: @news_event.title}, :university_id => @university
    assert_redirected_to university_news_event_path(@university, assigns(:news_event))
  end

  test "should destroy news_event" do
    assert_difference('NewsEvent.count', -1) do
      delete :destroy, id: @news_event, :university_id => @university
    end

    assert_redirected_to university_news_event_path(@university, assigns(:news_event))
  end
end
