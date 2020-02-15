class AuctionsController < ApplicationController


  def index
    @auctions = Auction.all

  end

  def show
    @auction = Auction.find(id=params[:id])
    @user = User.find_by_id(@auction.user_id)
    raise
    @timer = @auction.created_at

  end

end
