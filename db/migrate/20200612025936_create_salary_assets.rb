class CreateSalaryAssets < ActiveRecord::Migration[5.2]
  def change
    create_table :salary_assets do |t|
      t.float :total

      t.timestamps
    end
  end
end
