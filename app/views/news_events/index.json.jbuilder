json.array!(@news_events) do |news_event|
  json.extract! news_event, :id, :title, :post_date, :author, :content, :university_id
  json.url news_event_url(news_event, format: :json)
end
