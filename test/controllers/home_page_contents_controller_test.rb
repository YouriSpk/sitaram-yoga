require "test_helper"

class HomePageContentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @home_page_content = home_page_contents(:one)
  end

  test "should get index" do
    get home_page_contents_url
    assert_response :success
  end

  test "should get new" do
    get new_home_page_content_url
    assert_response :success
  end

  test "should create home_page_content" do
    assert_difference("HomePageContent.count") do
      post home_page_contents_url, params: { home_page_content: { content: @home_page_content.content, title: @home_page_content.title } }
    end

    assert_redirected_to home_page_content_url(HomePageContent.last)
  end

  test "should show home_page_content" do
    get home_page_content_url(@home_page_content)
    assert_response :success
  end

  test "should get edit" do
    get edit_home_page_content_url(@home_page_content)
    assert_response :success
  end

  test "should update home_page_content" do
    patch home_page_content_url(@home_page_content), params: { home_page_content: { content: @home_page_content.content, title: @home_page_content.title } }
    assert_redirected_to home_page_content_url(@home_page_content)
  end

  test "should destroy home_page_content" do
    assert_difference("HomePageContent.count", -1) do
      delete home_page_content_url(@home_page_content)
    end

    assert_redirected_to home_page_contents_url
  end
end
