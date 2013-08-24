json.array!(@events) do |event|
  json.extract! event, :code
  json.url event_url(event, format: :json)
end
