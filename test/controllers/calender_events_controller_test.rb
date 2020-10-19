require 'test_helper'

class CalenderEventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calender_event = calender_events(:one)
  end

  test "should get index" do
    get calender_events_url
    assert_response :success
  end

  test "should get new" do
    get new_calender_event_url
    assert_response :success
  end

  test "should create calender_event" do
    assert_difference('CalenderEvent.count') do
      post calender_events_url, params: { calender_event: { description: @calender_event.description, end_date: @calender_event.end_date, start_date: @calender_event.start_date, title: @calender_event.title } }
    end

    assert_redirected_to calender_event_url(CalenderEvent.last)
  end

  test "should show calender_event" do
    get calender_event_url(@calender_event)
    assert_response :success
  end

  test "should get edit" do
    get edit_calender_event_url(@calender_event)
    assert_response :success
  end

  test "should update calender_event" do
    patch calender_event_url(@calender_event), params: { calender_event: { description: @calender_event.description, end_date: @calender_event.end_date, start_date: @calender_event.start_date, title: @calender_event.title } }
    assert_redirected_to calender_event_url(@calender_event)
  end

  test "should destroy calender_event" do
    assert_difference('CalenderEvent.count', -1) do
      delete calender_event_url(@calender_event)
    end

    assert_redirected_to calender_events_url
  end
end
