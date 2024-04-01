require "test_helper"

class YogaStylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yoga_style = yoga_styles(:one)
  end

  test "should get index" do
    get yoga_styles_url
    assert_response :success
  end

  test "should get new" do
    get new_yoga_style_url
    assert_response :success
  end

  test "should create yoga_style" do
    assert_difference("YogaStyle.count") do
      post yoga_styles_url, params: { yoga_style: { description: @yoga_style.description, title: @yoga_style.title } }
    end

    assert_redirected_to yoga_style_url(YogaStyle.last)
  end

  test "should show yoga_style" do
    get yoga_style_url(@yoga_style)
    assert_response :success
  end

  test "should get edit" do
    get edit_yoga_style_url(@yoga_style)
    assert_response :success
  end

  test "should update yoga_style" do
    patch yoga_style_url(@yoga_style), params: { yoga_style: { description: @yoga_style.description, title: @yoga_style.title } }
    assert_redirected_to yoga_style_url(@yoga_style)
  end

  test "should destroy yoga_style" do
    assert_difference("YogaStyle.count", -1) do
      delete yoga_style_url(@yoga_style)
    end

    assert_redirected_to yoga_styles_url
  end
end
