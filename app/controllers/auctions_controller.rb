class AuctionsController < ApplicationController
  def index
    @auctions = current_userauctions

  end

  def show
    @auction = Auction.find(id=params[:id])
    @user = User.find_by_id(@auction.user_id)
    @timer = @auction.created_at

  end
end
