require "application_system_test_case"

class ObasicsTest < ApplicationSystemTestCase
  setup do
    @obasic = obasics(:one)
  end

  test "visiting the index" do
    visit obasics_url
    assert_selector "h1", text: "Obasics"
  end

  test "creating a Obasic" do
    visit obasics_url
    click_on "New Obasic"

    fill_in "Aadhar", with: @obasic.aadhar
    fill_in "Address", with: @obasic.address
    fill_in "Dob", with: @obasic.dob
    fill_in "Gender", with: @obasic.gender
    fill_in "Mob no", with: @obasic.mob_no
    fill_in "Name", with: @obasic.name
    fill_in "Pincode", with: @obasic.pincode
    click_on "Create Obasic"

    assert_text "Obasic was successfully created"
    click_on "Back"
  end

  test "updating a Obasic" do
    visit obasics_url
    click_on "Edit", match: :first

    fill_in "Aadhar", with: @obasic.aadhar
    fill_in "Address", with: @obasic.address
    fill_in "Dob", with: @obasic.dob
    fill_in "Gender", with: @obasic.gender
    fill_in "Mob no", with: @obasic.mob_no
    fill_in "Name", with: @obasic.name
    fill_in "Pincode", with: @obasic.pincode
    click_on "Update Obasic"

    assert_text "Obasic was successfully updated"
    click_on "Back"
  end

  test "destroying a Obasic" do
    visit obasics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Obasic was successfully destroyed"
  end
end
