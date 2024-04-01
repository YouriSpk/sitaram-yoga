require "application_system_test_case"

class OfferedFormatsTest < ApplicationSystemTestCase
  setup do
    @offered_format = offered_formats(:one)
  end

  test "visiting the index" do
    visit offered_formats_url
    assert_selector "h1", text: "Offered formats"
  end

  test "should create offered format" do
    visit offered_formats_url
    click_on "New offered format"

    fill_in "Description", with: @offered_format.description
    fill_in "Title", with: @offered_format.title
    click_on "Create Offered format"

    assert_text "Offered format was successfully created"
    click_on "Back"
  end

  test "should update Offered format" do
    visit offered_format_url(@offered_format)
    click_on "Edit this offered format", match: :first

    fill_in "Description", with: @offered_format.description
    fill_in "Title", with: @offered_format.title
    click_on "Update Offered format"

    assert_text "Offered format was successfully updated"
    click_on "Back"
  end

  test "should destroy Offered format" do
    visit offered_format_url(@offered_format)
    click_on "Destroy this offered format", match: :first

    assert_text "Offered format was successfully destroyed"
  end
end
