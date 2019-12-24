json.array!(@bookmark_events) do |event|
  json.extract! event, :id, :description, :shop_id
  json.start event.start_time
  json.title "<b>#{event.shop.name}</b> <br> #{event.title}"
end
