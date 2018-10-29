class SessionPlayer < ApplicationRecord
  belongs_to :user
  belongs_to :web_session
  has_one_attached :session_movie
end
