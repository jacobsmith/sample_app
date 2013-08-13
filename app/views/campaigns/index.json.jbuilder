json.array!(@campaigns) do |campaign|
  json.extract! campaign, :title, :description, :end_date, :user_id, :recipient_id
  json.url campaign_url(campaign, format: :json)
end