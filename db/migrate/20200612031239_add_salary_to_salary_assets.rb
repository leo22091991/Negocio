class AddSalaryToSalaryAssets < ActiveRecord::Migration[5.2]
  def change
    add_reference :salary_assets, :salary, foreign_key: true
  end
end
