require "application_system_test_case"

class InsurancesTest < ApplicationSystemTestCase
  setup do
    @insurance = insurances(:one)
  end

  test "visiting the index" do
    visit insurances_url
    assert_selector "h1", text: "Insurances"
  end

  test "creating a Insurance" do
    visit insurances_url
    click_on "New Insurance"

    fill_in "Amount", with: @insurance.amount
    fill_in "Cropname", with: @insurance.cropname
    fill_in "Rate", with: @insurance.rate
    fill_in "Surveyno", with: @insurance.surveyno
    fill_in "Year", with: @insurance.year
    click_on "Create Insurance"

    assert_text "Insurance was successfully created"
    click_on "Back"
  end

  test "updating a Insurance" do
    visit insurances_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @insurance.amount
    fill_in "Cropname", with: @insurance.cropname
    fill_in "Rate", with: @insurance.rate
    fill_in "Surveyno", with: @insurance.surveyno
    fill_in "Year", with: @insurance.year
    click_on "Update Insurance"

    assert_text "Insurance was successfully updated"
    click_on "Back"
  end

  test "destroying a Insurance" do
    visit insurances_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Insurance was successfully destroyed"
  end
end
