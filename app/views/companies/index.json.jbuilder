json.array!(@companies) do |company|
  json.extract! company, :id, :user_id, :name, :address_line, :city, :zip, :state, :survey
  json.url company_url(company, format: :json)
end
