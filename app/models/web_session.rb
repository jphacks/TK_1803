class WebSession < ApplicationRecord
  has_many :session_players, dependent: :destroy
  def session_players
    SessionPlayer.where(web_session_id: id)
  end
end
