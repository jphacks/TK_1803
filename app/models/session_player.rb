class SessionPlayer < ApplicationRecord
  belongs_to :user
  belongs_to :web_session
end
