require "application_system_test_case"

class LandsTest < ApplicationSystemTestCase
  setup do
    @land = lands(:one)
  end

  test "visiting the index" do
    visit lands_url
    assert_selector "h1", text: "Lands"
  end

  test "creating a Land" do
    visit lands_url
    click_on "New Land"

    fill_in "Agrioffice", with: @land.agrioffice
    fill_in "Area", with: @land.area
    fill_in "District", with: @land.district
    fill_in "Ownershiptype", with: @land.ownershiptype
    fill_in "Surveyno", with: @land.surveyno
    fill_in "Village", with: @land.village
    click_on "Create Land"

    assert_text "Land was successfully created"
    click_on "Back"
  end

  test "updating a Land" do
    visit lands_url
    click_on "Edit", match: :first

    fill_in "Agrioffice", with: @land.agrioffice
    fill_in "Area", with: @land.area
    fill_in "District", with: @land.district
    fill_in "Ownershiptype", with: @land.ownershiptype
    fill_in "Surveyno", with: @land.surveyno
    fill_in "Village", with: @land.village
    click_on "Update Land"

    assert_text "Land was successfully updated"
    click_on "Back"
  end

  test "destroying a Land" do
    visit lands_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Land was successfully destroyed"
  end
end
