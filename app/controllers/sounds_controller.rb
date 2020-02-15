class SoundsController < ApplicationController
def show
  @sound = Sound.find(params[:id])
  @auction = Auction.new

  @max_auction = @sound.auctions.map{|auction| auction.amount}.compact.max
  @my_max = @sound.auctions.where(user_id: current_user.id).map{|auction| auction.amount}.compact.max
end

def my_sounds
  @sounds = Sound.where(sold: true).filter { |sound| sound.won_by_me?(current_user) }
end

def index
  @sounds = Sound.all
  @auction = Auction.first
end

def new
  @sound = Sound.new
end

def create
 @sound = Sound.new(sound_params)
 @sound.user = current_user
  if @sound.save
    redirect_to sound_path(@sound)
  else
    render :new
  end
end


private

def sound_params
  params.require(:sound).permit(:title, :price, :user_id)
end
end
