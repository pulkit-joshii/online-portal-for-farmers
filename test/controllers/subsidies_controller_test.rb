require "test_helper"

class SubsidiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @subsidy = subsidies(:one)
  end

  test "should get index" do
    get subsidies_url
    assert_response :success
  end

  test "should get new" do
    get new_subsidy_url
    assert_response :success
  end

  test "should create subsidy" do
    assert_difference('Subsidy.count') do
      post subsidies_url, params: { subsidy: { amount: @subsidy.amount, cropname: @subsidy.cropname, surveyno: @subsidy.surveyno } }
    end

    assert_redirected_to subsidy_url(Subsidy.last)
  end

  test "should show subsidy" do
    get subsidy_url(@subsidy)
    assert_response :success
  end

  test "should get edit" do
    get edit_subsidy_url(@subsidy)
    assert_response :success
  end

  test "should update subsidy" do
    patch subsidy_url(@subsidy), params: { subsidy: { amount: @subsidy.amount, cropname: @subsidy.cropname, surveyno: @subsidy.surveyno } }
    assert_redirected_to subsidy_url(@subsidy)
  end

  test "should destroy subsidy" do
    assert_difference('Subsidy.count', -1) do
      delete subsidy_url(@subsidy)
    end

    assert_redirected_to subsidies_url
  end
end
