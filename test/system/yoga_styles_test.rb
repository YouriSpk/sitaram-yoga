require "application_system_test_case"

class YogaStylesTest < ApplicationSystemTestCase
  setup do
    @yoga_style = yoga_styles(:one)
  end

  test "visiting the index" do
    visit yoga_styles_url
    assert_selector "h1", text: "Yoga styles"
  end

  test "should create yoga style" do
    visit yoga_styles_url
    click_on "New yoga style"

    fill_in "Description", with: @yoga_style.description
    fill_in "Title", with: @yoga_style.title
    click_on "Create Yoga style"

    assert_text "Yoga style was successfully created"
    click_on "Back"
  end

  test "should update Yoga style" do
    visit yoga_style_url(@yoga_style)
    click_on "Edit this yoga style", match: :first

    fill_in "Description", with: @yoga_style.description
    fill_in "Title", with: @yoga_style.title
    click_on "Update Yoga style"

    assert_text "Yoga style was successfully updated"
    click_on "Back"
  end

  test "should destroy Yoga style" do
    visit yoga_style_url(@yoga_style)
    click_on "Destroy this yoga style", match: :first

    assert_text "Yoga style was successfully destroyed"
  end
end
