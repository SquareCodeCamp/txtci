json.array!(@sponsors) do |sponsor|
  json.extract! sponsor, :id, :sponsor_id, :name, :location, :child_id
  json.url sponsor_url(sponsor, format: :json)
end
