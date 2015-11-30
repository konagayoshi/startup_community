json.array!(@universities) do |university|
  json.extract! university, :id, :name, :location, :introduction, :contact, :cooperation, :rank, :reputation, :checked
  json.url university_url(university, format: :json)
end
