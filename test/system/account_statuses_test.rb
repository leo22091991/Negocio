require "application_system_test_case"

class AccountStatusesTest < ApplicationSystemTestCase
  setup do
    @account_status = account_statuses(:one)
  end

  test "visiting the index" do
    visit account_statuses_url
    assert_selector "h1", text: "Account Statuses"
  end

  test "creating a Account status" do
    visit account_statuses_url
    click_on "New Account Status"

    fill_in "Description", with: @account_status.description
    click_on "Create Account status"

    assert_text "Account status was successfully created"
    click_on "Back"
  end

  test "updating a Account status" do
    visit account_statuses_url
    click_on "Edit", match: :first

    fill_in "Description", with: @account_status.description
    click_on "Update Account status"

    assert_text "Account status was successfully updated"
    click_on "Back"
  end

  test "destroying a Account status" do
    visit account_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account status was successfully destroyed"
  end
end
