json.array!(@audience_members) do |audience_member|
  json.extract! audience_member, :email
  json.url audience_member_url(audience_member, format: :json)
end
