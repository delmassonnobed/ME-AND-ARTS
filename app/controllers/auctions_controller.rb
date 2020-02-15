class AuctionsController < ApplicationController
  def index
    @auctions = current_user.auctions

  end

  def show
    @auction = Auction.find(params[:id])
    @user = User.find_by_id(@auction.user_id)
    @timer = @auction.created_at
  end

  def create
    @auction = Auction.new(auction_params)
    @auction.user_id = current_user.id
    @sound = Sound.find(params[:sound_id])
    @auction.sound_id = @sound.id
    @auction.save
    if @auction.save
      redirect_to sound_path(@sound)
    else
      render action: "show", controller: "sounds"
    end
  end


  def auction_params
    params.require(:auction).permit(:amount)
  end
end
