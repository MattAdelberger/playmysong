json.array!(@votes) do |vote|
  json.extract! vote, :audience_member_id, :set_item_id
  json.url vote_url(vote, format: :json)
end
