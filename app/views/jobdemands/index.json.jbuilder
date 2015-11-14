json.array!(@jobdemands) do |jobdemand|
  json.extract! jobdemand, :id
  json.url jobdemand_url(jobdemand, format: :json)
end
