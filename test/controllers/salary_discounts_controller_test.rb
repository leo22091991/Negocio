require 'test_helper'

class SalaryDiscountsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @salary_discount = salary_discounts(:one)
  end

  test "should get index" do
    get salary_discounts_url
    assert_response :success
  end

  test "should get new" do
    get new_salary_discount_url
    assert_response :success
  end

  test "should create salary_discount" do
    assert_difference('SalaryDiscount.count') do
      post salary_discounts_url, params: { salary_discount: { total: @salary_discount.total } }
    end

    assert_redirected_to salary_discount_url(SalaryDiscount.last)
  end

  test "should show salary_discount" do
    get salary_discount_url(@salary_discount)
    assert_response :success
  end

  test "should get edit" do
    get edit_salary_discount_url(@salary_discount)
    assert_response :success
  end

  test "should update salary_discount" do
    patch salary_discount_url(@salary_discount), params: { salary_discount: { total: @salary_discount.total } }
    assert_redirected_to salary_discount_url(@salary_discount)
  end

  test "should destroy salary_discount" do
    assert_difference('SalaryDiscount.count', -1) do
      delete salary_discount_url(@salary_discount)
    end

    assert_redirected_to salary_discounts_url
  end
end
