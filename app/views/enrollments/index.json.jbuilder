json.array!(@enrollments) do |enrollment|
  json.extract! enrollment, :id, :Student_ID, :Instructor_ID, :Course_ID, :Grade, :Material, :Admission
  json.url enrollment_url(enrollment, format: :json)
end
