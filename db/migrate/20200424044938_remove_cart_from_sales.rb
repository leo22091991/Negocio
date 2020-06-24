class RemoveCartFromSales < ActiveRecord::Migration[5.2]
  def change
    remove_reference :sales, :cart, foreign_key: true
  end
end
