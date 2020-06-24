require 'test_helper'

class SalaryAssetsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @salary_asset = salary_assets(:one)
  end

  test "should get index" do
    get salary_assets_url
    assert_response :success
  end

  test "should get new" do
    get new_salary_asset_url
    assert_response :success
  end

  test "should create salary_asset" do
    assert_difference('SalaryAsset.count') do
      post salary_assets_url, params: { salary_asset: { total: @salary_asset.total } }
    end

    assert_redirected_to salary_asset_url(SalaryAsset.last)
  end

  test "should show salary_asset" do
    get salary_asset_url(@salary_asset)
    assert_response :success
  end

  test "should get edit" do
    get edit_salary_asset_url(@salary_asset)
    assert_response :success
  end

  test "should update salary_asset" do
    patch salary_asset_url(@salary_asset), params: { salary_asset: { total: @salary_asset.total } }
    assert_redirected_to salary_asset_url(@salary_asset)
  end

  test "should destroy salary_asset" do
    assert_difference('SalaryAsset.count', -1) do
      delete salary_asset_url(@salary_asset)
    end

    assert_redirected_to salary_assets_url
  end
end
