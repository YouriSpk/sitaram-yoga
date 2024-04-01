require "test_helper"

class PreNatalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pre_natal = pre_natals(:one)
  end

  test "should get index" do
    get pre_natals_url
    assert_response :success
  end

  test "should get new" do
    get new_pre_natal_url
    assert_response :success
  end

  test "should create pre_natal" do
    assert_difference("PreNatal.count") do
      post pre_natals_url, params: { pre_natal: { description: @pre_natal.description, title: @pre_natal.title } }
    end

    assert_redirected_to pre_natal_url(PreNatal.last)
  end

  test "should show pre_natal" do
    get pre_natal_url(@pre_natal)
    assert_response :success
  end

  test "should get edit" do
    get edit_pre_natal_url(@pre_natal)
    assert_response :success
  end

  test "should update pre_natal" do
    patch pre_natal_url(@pre_natal), params: { pre_natal: { description: @pre_natal.description, title: @pre_natal.title } }
    assert_redirected_to pre_natal_url(@pre_natal)
  end

  test "should destroy pre_natal" do
    assert_difference("PreNatal.count", -1) do
      delete pre_natal_url(@pre_natal)
    end

    assert_redirected_to pre_natals_url
  end
end
