json.extract! account_payment, :id, :total, :current_account_id, :created_at, :updated_at
json.url account_payment_url(account_payment, format: :json)
