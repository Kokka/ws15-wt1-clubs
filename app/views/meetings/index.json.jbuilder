json.array!(@meetings) do |meeting|
  json.extract! meeting, :id, :meetDate
  json.url meeting_url(meeting, format: :json)
end
