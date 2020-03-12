class CreateSaleLines < ActiveRecord::Migration[5.2]
  def change
    create_table :sale_lines do |t|
      t.integer :quantity
      t.float :subtotal
      t.references :product, foreign_key: true
      t.references :sale, foreign_key: true

      t.timestamps
    end
  end
end
