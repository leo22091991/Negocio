require "application_system_test_case"

class AssetTypesTest < ApplicationSystemTestCase
  setup do
    @asset_type = asset_types(:one)
  end

  test "visiting the index" do
    visit asset_types_url
    assert_selector "h1", text: "Asset Types"
  end

  test "creating a Asset type" do
    visit asset_types_url
    click_on "New Asset Type"

    fill_in "Description", with: @asset_type.description
    click_on "Create Asset type"

    assert_text "Asset type was successfully created"
    click_on "Back"
  end

  test "updating a Asset type" do
    visit asset_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @asset_type.description
    click_on "Update Asset type"

    assert_text "Asset type was successfully updated"
    click_on "Back"
  end

  test "destroying a Asset type" do
    visit asset_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Asset type was successfully destroyed"
  end
end
