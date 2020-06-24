class AddCartToSaleLines < ActiveRecord::Migration[5.2]
  def change
    add_reference :sale_lines, :cart, foreign_key: true
  end
end
