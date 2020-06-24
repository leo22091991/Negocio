class RemoveTotalFromDiscount < ActiveRecord::Migration[5.2]
  def change
    remove_column :discounts, :total, :float
  end
end
