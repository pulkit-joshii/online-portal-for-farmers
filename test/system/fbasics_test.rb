require "application_system_test_case"

class FbasicsTest < ApplicationSystemTestCase
  setup do
    @fbasic = fbasics(:one)
  end

  test "visiting the index" do
    visit fbasics_url
    assert_selector "h1", text: "Fbasics"
  end

  test "creating a Fbasic" do
    visit fbasics_url
    click_on "New Fbasic"

    fill_in "Aadhar", with: @fbasic.aadhar
    fill_in "Address", with: @fbasic.address
    fill_in "Dob", with: @fbasic.dob
    fill_in "Gender", with: @fbasic.gender
    fill_in "Mobno", with: @fbasic.mobno
    fill_in "Name", with: @fbasic.name
    fill_in "Pincode", with: @fbasic.pincode
    click_on "Create Fbasic"

    assert_text "Fbasic was successfully created"
    click_on "Back"
  end

  test "updating a Fbasic" do
    visit fbasics_url
    click_on "Edit", match: :first

    fill_in "Aadhar", with: @fbasic.aadhar
    fill_in "Address", with: @fbasic.address
    fill_in "Dob", with: @fbasic.dob
    fill_in "Gender", with: @fbasic.gender
    fill_in "Mobno", with: @fbasic.mobno
    fill_in "Name", with: @fbasic.name
    fill_in "Pincode", with: @fbasic.pincode
    click_on "Update Fbasic"

    assert_text "Fbasic was successfully updated"
    click_on "Back"
  end

  test "destroying a Fbasic" do
    visit fbasics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Fbasic was successfully destroyed"
  end
end
