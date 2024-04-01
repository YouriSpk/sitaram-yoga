require "application_system_test_case"

class PreNatalsTest < ApplicationSystemTestCase
  setup do
    @pre_natal = pre_natals(:one)
  end

  test "visiting the index" do
    visit pre_natals_url
    assert_selector "h1", text: "Pre natals"
  end

  test "should create pre natal" do
    visit pre_natals_url
    click_on "New pre natal"

    fill_in "Description", with: @pre_natal.description
    fill_in "Title", with: @pre_natal.title
    click_on "Create Pre natal"

    assert_text "Pre natal was successfully created"
    click_on "Back"
  end

  test "should update Pre natal" do
    visit pre_natal_url(@pre_natal)
    click_on "Edit this pre natal", match: :first

    fill_in "Description", with: @pre_natal.description
    fill_in "Title", with: @pre_natal.title
    click_on "Update Pre natal"

    assert_text "Pre natal was successfully updated"
    click_on "Back"
  end

  test "should destroy Pre natal" do
    visit pre_natal_url(@pre_natal)
    click_on "Destroy this pre natal", match: :first

    assert_text "Pre natal was successfully destroyed"
  end
end
