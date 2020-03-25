json.extract! user, :id, :name, :last_name, :type_of_user, :created_at, :updated_at
json.url user_url(user, format: :json)
