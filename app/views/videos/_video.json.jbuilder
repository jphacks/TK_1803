json.extract! video, :id, :name, :user_id, :instrument, :url, :date, :score, :created_at, :updated_at
json.url video_url(video, format: :json)
