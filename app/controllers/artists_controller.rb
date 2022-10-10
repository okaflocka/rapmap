class ArtistsController < ApplicationController
  
  def index
  end
  
  def search
    search = params[:search]
    # artists = RSpotify::Artist.search(search)
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
