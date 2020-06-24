class AddCartToSales < ActiveRecord::Migration[5.2]
  def change
    add_reference :sales, :cart, foreign_key: true
  end
end
