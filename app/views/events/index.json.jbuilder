json.array!(@events) do |event|
  json.extract! event, :id, :title, :start, :end, :created_at, :updated_at
  json.url "/events/#{event.id}/show"

end
