json.array!(@set_items) do |set_item|
  json.extract! set_item, :song_id, :event_id, :votes, :active
  json.url set_item_url(set_item, format: :json)
end
