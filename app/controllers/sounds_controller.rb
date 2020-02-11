class SoundsController < ApplicationController

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
