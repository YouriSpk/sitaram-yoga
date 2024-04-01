require "test_helper"

class CorporateOffersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @corporate_offer = corporate_offers(:one)
  end

  test "should get index" do
    get corporate_offers_url
    assert_response :success
  end

  test "should get new" do
    get new_corporate_offer_url
    assert_response :success
  end

  test "should create corporate_offer" do
    assert_difference("CorporateOffer.count") do
      post corporate_offers_url, params: { corporate_offer: { description: @corporate_offer.description, title: @corporate_offer.title } }
    end

    assert_redirected_to corporate_offer_url(CorporateOffer.last)
  end

  test "should show corporate_offer" do
    get corporate_offer_url(@corporate_offer)
    assert_response :success
  end

  test "should get edit" do
    get edit_corporate_offer_url(@corporate_offer)
    assert_response :success
  end

  test "should update corporate_offer" do
    patch corporate_offer_url(@corporate_offer), params: { corporate_offer: { description: @corporate_offer.description, title: @corporate_offer.title } }
    assert_redirected_to corporate_offer_url(@corporate_offer)
  end

  test "should destroy corporate_offer" do
    assert_difference("CorporateOffer.count", -1) do
      delete corporate_offer_url(@corporate_offer)
    end

    assert_redirected_to corporate_offers_url
  end
end
