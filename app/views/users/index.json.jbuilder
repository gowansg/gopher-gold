json.array!(@users) do |user|
  json.extract! user, :id, :username, :password, :createdon
  json.url user_url(user, format: :json)
end
