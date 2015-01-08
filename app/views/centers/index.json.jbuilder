json.array!(@centers) do |center|
  json.extract! center, :id, :center_id, :location
  json.url center_url(center, format: :json)
end
