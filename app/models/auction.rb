class Auction < ApplicationRecord
  belongs_to :sound
  has_one :user
end
