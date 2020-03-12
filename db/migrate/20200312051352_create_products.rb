class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.float :purchase_price
      t.float :sale_price
      t.integer :total_stock
      t.integer :min_stock
      t.references :type, foreign_key: true
      t.references :provider, foreign_key: true

      t.timestamps
    end
  end
end
