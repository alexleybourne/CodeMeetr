require 'test_helper'

class PricingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pricing = pricings(:one)
  end

  test "should get index" do
    get pricings_url
    assert_response :success
  end

  test "should get new" do
    get new_pricing_url
    assert_response :success
  end

  test "should create pricing" do
    assert_difference('Pricing.count') do
      post pricings_url, params: { pricing: { capacity: @pricing.capacity, price: @pricing.price } }
    end

    assert_redirected_to pricing_url(Pricing.last)
  end

  test "should show pricing" do
    get pricing_url(@pricing)
    assert_response :success
  end

  test "should get edit" do
    get edit_pricing_url(@pricing)
    assert_response :success
  end

  test "should update pricing" do
    patch pricing_url(@pricing), params: { pricing: { capacity: @pricing.capacity, price: @pricing.price } }
    assert_redirected_to pricing_url(@pricing)
  end

  test "should destroy pricing" do
    assert_difference('Pricing.count', -1) do
      delete pricing_url(@pricing)
    end

    assert_redirected_to pricings_url
  end
end
