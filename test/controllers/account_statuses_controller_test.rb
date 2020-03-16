require 'test_helper'

class AccountStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @account_status = account_statuses(:one)
  end

  test "should get index" do
    get account_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_account_status_url
    assert_response :success
  end

  test "should create account_status" do
    assert_difference('AccountStatus.count') do
      post account_statuses_url, params: { account_status: { description: @account_status.description } }
    end

    assert_redirected_to account_status_url(AccountStatus.last)
  end

  test "should show account_status" do
    get account_status_url(@account_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_account_status_url(@account_status)
    assert_response :success
  end

  test "should update account_status" do
    patch account_status_url(@account_status), params: { account_status: { description: @account_status.description } }
    assert_redirected_to account_status_url(@account_status)
  end

  test "should destroy account_status" do
    assert_difference('AccountStatus.count', -1) do
      delete account_status_url(@account_status)
    end

    assert_redirected_to account_statuses_url
  end
end
