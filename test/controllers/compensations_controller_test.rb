require "test_helper"

class CompensationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @compensation = compensations(:one)
  end

  test "should get index" do
    get compensations_url
    assert_response :success
  end

  test "should get new" do
    get new_compensation_url
    assert_response :success
  end

  test "should create compensation" do
    assert_difference('Compensation.count') do
      post compensations_url, params: { compensation: { amount: @compensation.amount, natcalname: @compensation.natcalname } }
    end

    assert_redirected_to compensation_url(Compensation.last)
  end

  test "should show compensation" do
    get compensation_url(@compensation)
    assert_response :success
  end

  test "should get edit" do
    get edit_compensation_url(@compensation)
    assert_response :success
  end

  test "should update compensation" do
    patch compensation_url(@compensation), params: { compensation: { amount: @compensation.amount, natcalname: @compensation.natcalname } }
    assert_redirected_to compensation_url(@compensation)
  end

  test "should destroy compensation" do
    assert_difference('Compensation.count', -1) do
      delete compensation_url(@compensation)
    end

    assert_redirected_to compensations_url
  end
end
