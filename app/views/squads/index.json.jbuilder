json.array!(@squads) do |squad|
  json.extract! squad, :id, :color, :instructor_id
  json.url squad_url(squad, format: :json)
end
