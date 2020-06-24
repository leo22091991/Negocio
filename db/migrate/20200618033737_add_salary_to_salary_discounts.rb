class AddSalaryToSalaryDiscounts < ActiveRecord::Migration[5.2]
  def change
    add_reference :salary_discounts, :salary, foreign_key: true
  end
end
