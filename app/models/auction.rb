class Auction < ApplicationRecord
  belongs_to :sound
  belongs_to :user

 # validate :amount_cannot_be_greater_than_maxprice
 # validate :amount_cannot_be_less_than_max_auction_amount

  def amount_cannot_be_greater_than_maxprice
    if amount > sound.maxprice
      errors.add(:amount, "can't be greater than max price")
    end
  end

  def amount_cannot_be_less_than_max_auction_amount
    if amount < sound.auctions.map{|auction| auction.amount}.compact.max
      errors.add(:amount, "can't be less than max auction amount")
    end
  end
end
