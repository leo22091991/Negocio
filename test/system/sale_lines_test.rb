require "application_system_test_case"

class SaleLinesTest < ApplicationSystemTestCase
  setup do
    @sale_line = sale_lines(:one)
  end

  test "visiting the index" do
    visit sale_lines_url
    assert_selector "h1", text: "Sale Lines"
  end

  test "creating a Sale line" do
    visit sale_lines_url
    click_on "New Sale Line"

    fill_in "Product", with: @sale_line.product_id
    fill_in "Quantity", with: @sale_line.quantity
    fill_in "Sale", with: @sale_line.sale_id
    fill_in "Subtotal", with: @sale_line.subtotal
    click_on "Create Sale line"

    assert_text "Sale line was successfully created"
    click_on "Back"
  end

  test "updating a Sale line" do
    visit sale_lines_url
    click_on "Edit", match: :first

    fill_in "Product", with: @sale_line.product_id
    fill_in "Quantity", with: @sale_line.quantity
    fill_in "Sale", with: @sale_line.sale_id
    fill_in "Subtotal", with: @sale_line.subtotal
    click_on "Update Sale line"

    assert_text "Sale line was successfully updated"
    click_on "Back"
  end

  test "destroying a Sale line" do
    visit sale_lines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sale line was successfully destroyed"
  end
end
