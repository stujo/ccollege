json.array!(@students) do |student|
  json.extract! student, :id, :name, :github_username, :squad_id
  json.url student_url(student, format: :json)
end
