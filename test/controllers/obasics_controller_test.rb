require "test_helper"

class ObasicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @obasic = obasics(:one)
  end

  test "should get index" do
    get obasics_url
    assert_response :success
  end

  test "should get new" do
    get new_obasic_url
    assert_response :success
  end

  test "should create obasic" do
    assert_difference('Obasic.count') do
      post obasics_url, params: { obasic: { aadhar: @obasic.aadhar, address: @obasic.address, dob: @obasic.dob, gender: @obasic.gender, mob_no: @obasic.mob_no, name: @obasic.name, pincode: @obasic.pincode } }
    end

    assert_redirected_to obasic_url(Obasic.last)
  end

  test "should show obasic" do
    get obasic_url(@obasic)
    assert_response :success
  end

  test "should get edit" do
    get edit_obasic_url(@obasic)
    assert_response :success
  end

  test "should update obasic" do
    patch obasic_url(@obasic), params: { obasic: { aadhar: @obasic.aadhar, address: @obasic.address, dob: @obasic.dob, gender: @obasic.gender, mob_no: @obasic.mob_no, name: @obasic.name, pincode: @obasic.pincode } }
    assert_redirected_to obasic_url(@obasic)
  end

  test "should destroy obasic" do
    assert_difference('Obasic.count', -1) do
      delete obasic_url(@obasic)
    end

    assert_redirected_to obasics_url
  end
end
