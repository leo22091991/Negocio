require "application_system_test_case"

class AccountLinesTest < ApplicationSystemTestCase
  setup do
    @account_line = account_lines(:one)
  end

  test "visiting the index" do
    visit account_lines_url
    assert_selector "h1", text: "Account Lines"
  end

  test "creating a Account line" do
    visit account_lines_url
    click_on "New Account Line"

    fill_in "Current account", with: @account_line.current_account_id
    fill_in "Sale", with: @account_line.sale_id
    fill_in "Total", with: @account_line.total
    click_on "Create Account line"

    assert_text "Account line was successfully created"
    click_on "Back"
  end

  test "updating a Account line" do
    visit account_lines_url
    click_on "Edit", match: :first

    fill_in "Current account", with: @account_line.current_account_id
    fill_in "Sale", with: @account_line.sale_id
    fill_in "Total", with: @account_line.total
    click_on "Update Account line"

    assert_text "Account line was successfully updated"
    click_on "Back"
  end

  test "destroying a Account line" do
    visit account_lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account line was successfully destroyed"
  end
end
