class ArtistsController < ApplicationController
  require 'RSpotify'
  RSpotify.authenticate("36b1fd33a18b4c5a87ab24234bd40bd0", "01c592dfa5ed4a0b9aed2f0c7244aef8")

  def index
  end
  
  def search
    search = params[:search]
    artists = RSpotify::Artist.search(search)
    @search = artists.first
  end

  def create
    artist = Artist.new(artist_params)
    if artist.save
      redirect_to root_path
    else
      @search = artist
      render :search  ##テンプレートバグ発生
    end
  end
  
  def state
    @state_artists = Artist.stateSearch(params[:state_id])
    @state = Map.find(params[:state_id])
  end

  private

  def artist_params
    params.permit(:image, :name, :genre, :spotify_url, :state_id)
  end

end
