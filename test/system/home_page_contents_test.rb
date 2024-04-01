require "application_system_test_case"

class HomePageContentsTest < ApplicationSystemTestCase
  setup do
    @home_page_content = home_page_contents(:one)
  end

  test "visiting the index" do
    visit home_page_contents_url
    assert_selector "h1", text: "Home page contents"
  end

  test "should create home page content" do
    visit home_page_contents_url
    click_on "New home page content"

    fill_in "Content", with: @home_page_content.content
    fill_in "Title", with: @home_page_content.title
    click_on "Create Home page content"

    assert_text "Home page content was successfully created"
    click_on "Back"
  end

  test "should update Home page content" do
    visit home_page_content_url(@home_page_content)
    click_on "Edit this home page content", match: :first

    fill_in "Content", with: @home_page_content.content
    fill_in "Title", with: @home_page_content.title
    click_on "Update Home page content"

    assert_text "Home page content was successfully updated"
    click_on "Back"
  end

  test "should destroy Home page content" do
    visit home_page_content_url(@home_page_content)
    click_on "Destroy this home page content", match: :first

    assert_text "Home page content was successfully destroyed"
  end
end
