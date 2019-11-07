json.extract! event, :id, :title, :description, :cover_image, :host_name, :color, :location, :start_time, :end_time, :pricing_id, :promotion_id, :user_id, :created_at, :updated_at
json.url event_url(event, format: :json)
