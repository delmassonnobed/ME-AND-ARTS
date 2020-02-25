class Sound < ApplicationRecord
  has_one :auction
  belongs_to :user
  validates :title, presence: true, uniqueness: true
  validates :bpm, presence: true
  validates :genre, presence: true

  has_one_attached :mp3_file
  has_one_attached :photo

  has_many :auctions, dependent: :destroy

  include PgSearch::Model
  pg_search_scope :search_by_title_and_genre,
    against: [ :title, :genre ],
    using: {
      tsearch: { prefix: true }
    }

  def won_by_me?(user)
    return false if auctions.empty?
    return false if auctions.where(user_id: user.id).empty?

    max_bid = auctions.map { |auction| auction.amount }.compact.max
    my_max_bid = auctions.where(user_id: user.id).map { |auction| auction.amount }.compact.max

    return max_bid == my_max_bid
  end
end

