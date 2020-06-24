require "application_system_test_case"

class SalaryDiscountsTest < ApplicationSystemTestCase
  setup do
    @salary_discount = salary_discounts(:one)
  end

  test "visiting the index" do
    visit salary_discounts_url
    assert_selector "h1", text: "Salary Discounts"
  end

  test "creating a Salary discount" do
    visit salary_discounts_url
    click_on "New Salary Discount"

    fill_in "Total", with: @salary_discount.total
    click_on "Create Salary discount"

    assert_text "Salary discount was successfully created"
    click_on "Back"
  end

  test "updating a Salary discount" do
    visit salary_discounts_url
    click_on "Edit", match: :first

    fill_in "Total", with: @salary_discount.total
    click_on "Update Salary discount"

    assert_text "Salary discount was successfully updated"
    click_on "Back"
  end

  test "destroying a Salary discount" do
    visit salary_discounts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Salary discount was successfully destroyed"
  end
end
