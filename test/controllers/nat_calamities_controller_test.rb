require "test_helper"

class NatCalamitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nat_calamity = nat_calamities(:one)
  end

  test "should get index" do
    get nat_calamities_url
    assert_response :success
  end

  test "should get new" do
    get new_nat_calamity_url
    assert_response :success
  end

  test "should create nat_calamity" do
    assert_difference('NatCalamity.count') do
      post nat_calamities_url, params: { nat_calamity: { month: @nat_calamity.month, name: @nat_calamity.name, type: @nat_calamity.type, year: @nat_calamity.year } }
    end

    assert_redirected_to nat_calamity_url(NatCalamity.last)
  end

  test "should show nat_calamity" do
    get nat_calamity_url(@nat_calamity)
    assert_response :success
  end

  test "should get edit" do
    get edit_nat_calamity_url(@nat_calamity)
    assert_response :success
  end

  test "should update nat_calamity" do
    patch nat_calamity_url(@nat_calamity), params: { nat_calamity: { month: @nat_calamity.month, name: @nat_calamity.name, type: @nat_calamity.type, year: @nat_calamity.year } }
    assert_redirected_to nat_calamity_url(@nat_calamity)
  end

  test "should destroy nat_calamity" do
    assert_difference('NatCalamity.count', -1) do
      delete nat_calamity_url(@nat_calamity)
    end

    assert_redirected_to nat_calamities_url
  end
end
