require "application_system_test_case"

class CurrentAccountsTest < ApplicationSystemTestCase
  setup do
    @current_account = current_accounts(:one)
  end

  test "visiting the index" do
    visit current_accounts_url
    assert_selector "h1", text: "Current Accounts"
  end

  test "creating a Current account" do
    visit current_accounts_url
    click_on "New Current Account"

    fill_in "Account status", with: @current_account.account_status_id
    fill_in "Cliente", with: @current_account.cliente_id
    fill_in "Total", with: @current_account.total
    click_on "Create Current account"

    assert_text "Current account was successfully created"
    click_on "Back"
  end

  test "updating a Current account" do
    visit current_accounts_url
    click_on "Edit", match: :first

    fill_in "Account status", with: @current_account.account_status_id
    fill_in "Cliente", with: @current_account.cliente_id
    fill_in "Total", with: @current_account.total
    click_on "Update Current account"

    assert_text "Current account was successfully updated"
    click_on "Back"
  end

  test "destroying a Current account" do
    visit current_accounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Current account was successfully destroyed"
  end
end
