require "test_helper"

class OfferedFormatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offered_format = offered_formats(:one)
  end

  test "should get index" do
    get offered_formats_url
    assert_response :success
  end

  test "should get new" do
    get new_offered_format_url
    assert_response :success
  end

  test "should create offered_format" do
    assert_difference("OfferedFormat.count") do
      post offered_formats_url, params: { offered_format: { description: @offered_format.description, title: @offered_format.title } }
    end

    assert_redirected_to offered_format_url(OfferedFormat.last)
  end

  test "should show offered_format" do
    get offered_format_url(@offered_format)
    assert_response :success
  end

  test "should get edit" do
    get edit_offered_format_url(@offered_format)
    assert_response :success
  end

  test "should update offered_format" do
    patch offered_format_url(@offered_format), params: { offered_format: { description: @offered_format.description, title: @offered_format.title } }
    assert_redirected_to offered_format_url(@offered_format)
  end

  test "should destroy offered_format" do
    assert_difference("OfferedFormat.count", -1) do
      delete offered_format_url(@offered_format)
    end

    assert_redirected_to offered_formats_url
  end
end
