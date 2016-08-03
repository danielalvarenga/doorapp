json.extract! token, :id, :secret_key, :temporary, :app_id, :user_id, :created_at, :updated_at
json.url token_url(token, format: :json)