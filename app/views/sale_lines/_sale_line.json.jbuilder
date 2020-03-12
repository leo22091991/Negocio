json.extract! sale_line, :id, :quantity, :subtotal, :product_id, :sale_id, :created_at, :updated_at
json.url sale_line_url(sale_line, format: :json)
