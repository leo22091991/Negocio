require "application_system_test_case"

class SalaryAssetsTest < ApplicationSystemTestCase
  setup do
    @salary_asset = salary_assets(:one)
  end

  test "visiting the index" do
    visit salary_assets_url
    assert_selector "h1", text: "Salary Assets"
  end

  test "creating a Salary asset" do
    visit salary_assets_url
    click_on "New Salary Asset"

    fill_in "Total", with: @salary_asset.total
    click_on "Create Salary asset"

    assert_text "Salary asset was successfully created"
    click_on "Back"
  end

  test "updating a Salary asset" do
    visit salary_assets_url
    click_on "Edit", match: :first

    fill_in "Total", with: @salary_asset.total
    click_on "Update Salary asset"

    assert_text "Salary asset was successfully updated"
    click_on "Back"
  end

  test "destroying a Salary asset" do
    visit salary_assets_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Salary asset was successfully destroyed"
  end
end
