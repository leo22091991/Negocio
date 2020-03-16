require 'test_helper'

class AccountPaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_payment = account_payments(:one)
  end

  test "should get index" do
    get account_payments_url
    assert_response :success
  end

  test "should get new" do
    get new_account_payment_url
    assert_response :success
  end

  test "should create account_payment" do
    assert_difference('AccountPayment.count') do
      post account_payments_url, params: { account_payment: { current_account_id: @account_payment.current_account_id, total: @account_payment.total } }
    end

    assert_redirected_to account_payment_url(AccountPayment.last)
  end

  test "should show account_payment" do
    get account_payment_url(@account_payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_payment_url(@account_payment)
    assert_response :success
  end

  test "should update account_payment" do
    patch account_payment_url(@account_payment), params: { account_payment: { current_account_id: @account_payment.current_account_id, total: @account_payment.total } }
    assert_redirected_to account_payment_url(@account_payment)
  end

  test "should destroy account_payment" do
    assert_difference('AccountPayment.count', -1) do
      delete account_payment_url(@account_payment)
    end

    assert_redirected_to account_payments_url
  end
end
