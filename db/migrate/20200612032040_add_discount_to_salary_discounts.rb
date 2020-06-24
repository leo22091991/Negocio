class AddDiscountToSalaryDiscounts < ActiveRecord::Migration[5.2]
  def change
    add_reference :salary_discounts, :discount, foreign_key: true
  end
end
