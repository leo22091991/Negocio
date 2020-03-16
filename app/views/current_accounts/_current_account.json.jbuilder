json.extract! current_account, :id, :total, :cliente_id, :account_status_id, :created_at, :updated_at
json.url current_account_url(current_account, format: :json)
