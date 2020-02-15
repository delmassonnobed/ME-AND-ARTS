class Sound < ApplicationRecord
  has_one :auction
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :bpm, presence: true
  validates :genre, presence: true

  has_one_attached :mp3_file

  has_many :auctions, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_title_and_genre,
    against: [ :title, :genre ],
    using: {
      tsearch: { prefix: true }
    }
end

