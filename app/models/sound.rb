class Sound < ApplicationRecord
  has_one :auction
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :bpm, presence: true
  validates :genre, presence: true

  has_one_attached :mp3_file

  has_many :auctions, dependent: :destroy
end
