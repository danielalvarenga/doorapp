json.extract! token, :id, :secret_key, :temporary, :tokenable_id, :tokenable_type, :created_at, :updated_at
json.url token_url(token, format: :json)