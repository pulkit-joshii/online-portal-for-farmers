require "test_helper"

class FbasicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fbasic = fbasics(:one)
  end

  test "should get index" do
    get fbasics_url
    assert_response :success
  end

  test "should get new" do
    get new_fbasic_url
    assert_response :success
  end

  test "should create fbasic" do
    assert_difference('Fbasic.count') do
      post fbasics_url, params: { fbasic: { aadhar: @fbasic.aadhar, address: @fbasic.address, dob: @fbasic.dob, gender: @fbasic.gender, mobno: @fbasic.mobno, name: @fbasic.name, pincode: @fbasic.pincode } }
    end

    assert_redirected_to fbasic_url(Fbasic.last)
  end

  test "should show fbasic" do
    get fbasic_url(@fbasic)
    assert_response :success
  end

  test "should get edit" do
    get edit_fbasic_url(@fbasic)
    assert_response :success
  end

  test "should update fbasic" do
    patch fbasic_url(@fbasic), params: { fbasic: { aadhar: @fbasic.aadhar, address: @fbasic.address, dob: @fbasic.dob, gender: @fbasic.gender, mobno: @fbasic.mobno, name: @fbasic.name, pincode: @fbasic.pincode } }
    assert_redirected_to fbasic_url(@fbasic)
  end

  test "should destroy fbasic" do
    assert_difference('Fbasic.count', -1) do
      delete fbasic_url(@fbasic)
    end

    assert_redirected_to fbasics_url
  end
end
