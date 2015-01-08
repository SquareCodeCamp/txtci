json.array!(@messages) do |message|
  json.extract! message, :id, :message_id, :type, :text, :center_id, :sponsor_id
  json.url message_url(message, format: :json)
end
