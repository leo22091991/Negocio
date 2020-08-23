json.extract! user, :id, :dni, :last_name, :name, :phone, :created_at, :updated_at
json.url user_url(user, format: :json)
