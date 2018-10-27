json.extract! session_player, :id, :user_id, :session_id, :instrument, :created_at, :updated_at
json.url session_player_url(session_player, format: :json)
