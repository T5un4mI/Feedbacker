require "application_system_test_case"

class FeedbacksTest < ApplicationSystemTestCase
  setup do
    @feedback = feedbacks(:one)
  end

  test "visiting the index" do
    visit feedbacks_url
    assert_selector "h1", text: "Feedbacks"
  end

  test "creating a Feedback" do
    visit feedbacks_url
    click_on "New Feedback"

    fill_in "City", with: @feedback.city_id
    fill_in "Comment", with: @feedback.comment
    fill_in "Email", with: @feedback.email
    fill_in "First name", with: @feedback.first_name
    fill_in "Last name", with: @feedback.last_name
    fill_in "Middle name", with: @feedback.middle_name
    fill_in "Phone", with: @feedback.phone
    click_on "Create Feedback"

    assert_text "Feedback was successfully created"
    click_on "Back"
  end

  test "updating a Feedback" do
    visit feedbacks_url
    click_on "Edit", match: :first

    fill_in "City", with: @feedback.city_id
    fill_in "Comment", with: @feedback.comment
    fill_in "Email", with: @feedback.email
    fill_in "First name", with: @feedback.first_name
    fill_in "Last name", with: @feedback.last_name
    fill_in "Middle name", with: @feedback.middle_name
    fill_in "Phone", with: @feedback.phone
    click_on "Update Feedback"

    assert_text "Feedback was successfully updated"
    click_on "Back"
  end

  test "destroying a Feedback" do
    visit feedbacks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Feedback was successfully destroyed"
  end
end
