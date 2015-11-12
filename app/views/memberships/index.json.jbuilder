json.array!(@memberships) do |membership|
  json.extract! membership, :id, :joined
  json.url membership_url(membership, format: :json)
end
