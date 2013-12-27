json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :created_on
  json.url user_url(user, format: :json)
end
