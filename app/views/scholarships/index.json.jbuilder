json.array!(@scholarships) do |scholarship|
  json.extract! scholarship, :id, :title, :sponsor, :award, :requirements, :start_time, :end_time, :content, :contact, :university_id
  json.url scholarship_url(scholarship, format: :json)
end
