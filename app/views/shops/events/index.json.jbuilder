# frozen_string_literal: true

json.array!(@events) do |event|
  json.extract! event, :id, :title, :description
  json.start event.start_time
end
