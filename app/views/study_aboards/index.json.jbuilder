json.array!(@study_aboards) do |study_aboard|
  json.extract! study_aboard, :id, :title, :destination, :start_time, :duration, :sponsor, :requirements, :content, :contact, :university_id
  json.url study_aboard_url(study_aboard, format: :json)
end
