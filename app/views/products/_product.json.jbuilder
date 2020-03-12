json.extract! product, :id, :name, :purchase_price, :sale_price, :total_stock, :min_stock, :type_id, :provider_id, :created_at, :updated_at
json.url product_url(product, format: :json)
