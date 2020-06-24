class CreateSalaries < ActiveRecord::Migration[5.2]
  def change
    create_table :salaries do |t|
      t.float :gross_salary
      t.float :net_salary

      t.timestamps
    end
  end
end
