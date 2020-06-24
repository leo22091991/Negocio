class AddAssetToSalaryAssets < ActiveRecord::Migration[5.2]
  def change
    add_reference :salary_assets, :asset, foreign_key: true
  end
end
