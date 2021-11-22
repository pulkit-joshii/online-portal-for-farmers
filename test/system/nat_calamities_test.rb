require "application_system_test_case"

class NatCalamitiesTest < ApplicationSystemTestCase
  setup do
    @nat_calamity = nat_calamities(:one)
  end

  test "visiting the index" do
    visit nat_calamities_url
    assert_selector "h1", text: "Nat Calamities"
  end

  test "creating a Nat calamity" do
    visit nat_calamities_url
    click_on "New Nat Calamity"

    fill_in "Month", with: @nat_calamity.month
    fill_in "Name", with: @nat_calamity.name
    fill_in "Type", with: @nat_calamity.type
    fill_in "Year", with: @nat_calamity.year
    click_on "Create Nat calamity"

    assert_text "Nat calamity was successfully created"
    click_on "Back"
  end

  test "updating a Nat calamity" do
    visit nat_calamities_url
    click_on "Edit", match: :first

    fill_in "Month", with: @nat_calamity.month
    fill_in "Name", with: @nat_calamity.name
    fill_in "Type", with: @nat_calamity.type
    fill_in "Year", with: @nat_calamity.year
    click_on "Update Nat calamity"

    assert_text "Nat calamity was successfully updated"
    click_on "Back"
  end

  test "destroying a Nat calamity" do
    visit nat_calamities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nat calamity was successfully destroyed"
  end
end
