require 'test_helper'

class AccountLinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_line = account_lines(:one)
  end

  test "should get index" do
    get account_lines_url
    assert_response :success
  end

  test "should get new" do
    get new_account_line_url
    assert_response :success
  end

  test "should create account_line" do
    assert_difference('AccountLine.count') do
      post account_lines_url, params: { account_line: { current_account_id: @account_line.current_account_id, sale_id: @account_line.sale_id, total: @account_line.total } }
    end

    assert_redirected_to account_line_url(AccountLine.last)
  end

  test "should show account_line" do
    get account_line_url(@account_line)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_line_url(@account_line)
    assert_response :success
  end

  test "should update account_line" do
    patch account_line_url(@account_line), params: { account_line: { current_account_id: @account_line.current_account_id, sale_id: @account_line.sale_id, total: @account_line.total } }
    assert_redirected_to account_line_url(@account_line)
  end

  test "should destroy account_line" do
    assert_difference('AccountLine.count', -1) do
      delete account_line_url(@account_line)
    end

    assert_redirected_to account_lines_url
  end
end
