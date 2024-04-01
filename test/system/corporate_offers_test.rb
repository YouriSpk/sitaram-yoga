require "application_system_test_case"

class CorporateOffersTest < ApplicationSystemTestCase
  setup do
    @corporate_offer = corporate_offers(:one)
  end

  test "visiting the index" do
    visit corporate_offers_url
    assert_selector "h1", text: "Corporate offers"
  end

  test "should create corporate offer" do
    visit corporate_offers_url
    click_on "New corporate offer"

    fill_in "Description", with: @corporate_offer.description
    fill_in "Title", with: @corporate_offer.title
    click_on "Create Corporate offer"

    assert_text "Corporate offer was successfully created"
    click_on "Back"
  end

  test "should update Corporate offer" do
    visit corporate_offer_url(@corporate_offer)
    click_on "Edit this corporate offer", match: :first

    fill_in "Description", with: @corporate_offer.description
    fill_in "Title", with: @corporate_offer.title
    click_on "Update Corporate offer"

    assert_text "Corporate offer was successfully updated"
    click_on "Back"
  end

  test "should destroy Corporate offer" do
    visit corporate_offer_url(@corporate_offer)
    click_on "Destroy this corporate offer", match: :first

    assert_text "Corporate offer was successfully destroyed"
  end
end
