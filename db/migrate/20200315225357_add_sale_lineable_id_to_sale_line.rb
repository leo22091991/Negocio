class AddSaleLineableIdToSaleLine < ActiveRecord::Migration[5.2]
  def change
    add_column :sale_lines, :sale_lineable_id, :integer
  end
end
