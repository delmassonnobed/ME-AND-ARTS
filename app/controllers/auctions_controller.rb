class AuctionsController < ApplicationController


  def index
    @auctions = Auction.all

  end

  def show
    @auction = Auction.first
  end

end
