json.extract! web_session, :id, :name, :created_at, :updated_at
json.url web_session_url(web_session, format: :json)
