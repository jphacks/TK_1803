class WebSession < ApplicationRecord
  def session_players
    SessionPlayer.where(web_session_id: id)
  end
end
