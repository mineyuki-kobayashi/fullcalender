require "application_system_test_case"

class CalenderEventsTest < ApplicationSystemTestCase
  setup do
    @calender_event = calender_events(:one)
  end

  test "visiting the index" do
    visit calender_events_url
    assert_selector "h1", text: "Calender Events"
  end

  test "creating a Calender event" do
    visit calender_events_url
    click_on "New Calender Event"

    fill_in "Description", with: @calender_event.description
    fill_in "End date", with: @calender_event.end_date
    fill_in "Start date", with: @calender_event.start_date
    fill_in "Title", with: @calender_event.title
    click_on "Create Calender event"

    assert_text "Calender event was successfully created"
    click_on "Back"
  end

  test "updating a Calender event" do
    visit calender_events_url
    click_on "Edit", match: :first

    fill_in "Description", with: @calender_event.description
    fill_in "End date", with: @calender_event.end_date
    fill_in "Start date", with: @calender_event.start_date
    fill_in "Title", with: @calender_event.title
    click_on "Update Calender event"

    assert_text "Calender event was successfully updated"
    click_on "Back"
  end

  test "destroying a Calender event" do
    visit calender_events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calender event was successfully destroyed"
  end
end
