json.array!(@admissions) do |admission|
  json.extract! admission, :id, :title, :start_time, :end_time, :content, :requirements, :demands, :contact, :university_id
  json.url admission_url(admission, format: :json)
end
