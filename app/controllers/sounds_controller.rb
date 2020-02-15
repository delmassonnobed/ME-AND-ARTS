class SoundsController < ApplicationController
def show
  @sound = Sound.find(params[:id])
  @auction = Auction.new

@max_auction = @sound.auctions.map{|auction| auction.amount}.compact.max
@my_max = @sound.auctions.where(user_id: current_user.id).map{|auction| auction.amount}.compact.max

end

def index
  if params[:search]
    @sounds = Sound.search_by_title_and_genre(params[:search])
  else
    @sounds = Sound.all
  end
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
