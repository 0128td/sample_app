json.array! @events, partial: "events/event", as: :event

json.extract! event, :id, :title, :start, :end, :created_at, :updated_at
json.url event_url(event, format: :html)


json.array!(@events) do |event|
  json.extract! event, :id, :title, :start, :end, :created_at, :updated_at
  json.url event_url(event, format: :html)

end
