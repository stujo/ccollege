json.array!(@instructors) do |instructor|
  json.extract! instructor, :id, :name, :github_username
  json.url instructor_url(instructor, format: :json)
end
