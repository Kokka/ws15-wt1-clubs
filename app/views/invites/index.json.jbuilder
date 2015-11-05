json.array!(@invites) do |invite|
  json.extract! invite, :id, :accept, :timestamp
  json.url invite_url(invite, format: :json)
end
