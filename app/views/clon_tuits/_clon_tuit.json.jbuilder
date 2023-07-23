json.extract! clon_tuit, :id, :user, :email, :tuit, :date, :created_at, :updated_at
json.url clon_tuit_url(clon_tuit, format: :json)
