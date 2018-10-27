class Video < ApplicationRecord
  belongs_to :user
  validates :name, {presence: true}
  validates :user, {presence: true}
  validates :instrument, {presence: true}
  validates :url, {presence: true, uniqueness: true}
  validates :score, {presence: true}
end
