require "application_system_test_case"

class SubsidiesTest < ApplicationSystemTestCase
  setup do
    @subsidy = subsidies(:one)
  end

  test "visiting the index" do
    visit subsidies_url
    assert_selector "h1", text: "Subsidies"
  end

  test "creating a Subsidy" do
    visit subsidies_url
    click_on "New Subsidy"

    fill_in "Amount", with: @subsidy.amount
    fill_in "Cropname", with: @subsidy.cropname
    fill_in "Surveyno", with: @subsidy.surveyno
    click_on "Create Subsidy"

    assert_text "Subsidy was successfully created"
    click_on "Back"
  end

  test "updating a Subsidy" do
    visit subsidies_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @subsidy.amount
    fill_in "Cropname", with: @subsidy.cropname
    fill_in "Surveyno", with: @subsidy.surveyno
    click_on "Update Subsidy"

    assert_text "Subsidy was successfully updated"
    click_on "Back"
  end

  test "destroying a Subsidy" do
    visit subsidies_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Subsidy was successfully destroyed"
  end
end
