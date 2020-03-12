require 'test_helper'

class SaleLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sale_line = sale_lines(:one)
  end

  test "should get index" do
    get sale_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_sale_line_url
    assert_response :success
  end

  test "should create sale_line" do
    assert_difference('SaleLine.count') do
      post sale_lines_url, params: { sale_line: { product_id: @sale_line.product_id, quantity: @sale_line.quantity, sale_id: @sale_line.sale_id, subtotal: @sale_line.subtotal } }
    end

    assert_redirected_to sale_line_url(SaleLine.last)
  end

  test "should show sale_line" do
    get sale_line_url(@sale_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_sale_line_url(@sale_line)
    assert_response :success
  end

  test "should update sale_line" do
    patch sale_line_url(@sale_line), params: { sale_line: { product_id: @sale_line.product_id, quantity: @sale_line.quantity, sale_id: @sale_line.sale_id, subtotal: @sale_line.subtotal } }
    assert_redirected_to sale_line_url(@sale_line)
  end

  test "should destroy sale_line" do
    assert_difference('SaleLine.count', -1) do
      delete sale_line_url(@sale_line)
    end

    assert_redirected_to sale_lines_url
  end
end
