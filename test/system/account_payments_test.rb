require "application_system_test_case"

class AccountPaymentsTest < ApplicationSystemTestCase
  setup do
    @account_payment = account_payments(:one)
  end

  test "visiting the index" do
    visit account_payments_url
    assert_selector "h1", text: "Account Payments"
  end

  test "creating a Account payment" do
    visit account_payments_url
    click_on "New Account Payment"

    fill_in "Current account", with: @account_payment.current_account_id
    fill_in "Total", with: @account_payment.total
    click_on "Create Account payment"

    assert_text "Account payment was successfully created"
    click_on "Back"
  end

  test "updating a Account payment" do
    visit account_payments_url
    click_on "Edit", match: :first

    fill_in "Current account", with: @account_payment.current_account_id
    fill_in "Total", with: @account_payment.total
    click_on "Update Account payment"

    assert_text "Account payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Account payment" do
    visit account_payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Account payment was successfully destroyed"
  end
end
