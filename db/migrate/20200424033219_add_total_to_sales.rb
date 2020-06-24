class AddTotalToSales < ActiveRecord::Migration[5.2]
  def change
    add_column :sales, :total, :float
  end
end
