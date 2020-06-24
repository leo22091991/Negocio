class AddTotalSaleToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :total_sale, :float
  end
end
