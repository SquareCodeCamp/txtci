json.array!(@children) do |child|
  json.extract! child, :id, :child_id, :name, :sponsor_id
  json.url child_url(child, format: :json)
end
