class Sound < ApplicationRecord
  has_one :auction
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :bpm, presence: true
  validates :genre, presence: true
end
