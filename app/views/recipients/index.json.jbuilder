json.array!(@recipients) do |recipient|
  json.extract! recipient, :first_name, :last_name, :title, :price, :user_id
  json.url recipient_url(recipient, format: :json)
end