json.extract! session_player, :id, :user_id, :web_session_id, :session_video, :instrument, :created_at, :updated_at
json.url session_player_url(session_player, format: :json)
