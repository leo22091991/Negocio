class AddSaleLineableTypeToSaleLine < ActiveRecord::Migration[5.2]
  def change
    add_column :sale_lines, :sale_lineable_type, :string
  end
end
