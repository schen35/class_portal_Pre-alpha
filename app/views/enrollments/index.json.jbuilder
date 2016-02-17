json.array!(@enrollments) do |enrollment|
  json.extract! enrollment, :id, :courseid, :coursename, :instructor, :description, :studentname
  json.url enrollment_url(enrollment, format: :json)
end
