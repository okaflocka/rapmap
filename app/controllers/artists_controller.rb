class ArtistsController < ApplicationController
  require 'RSpotify'
  RSpotify.authenticate("36b1fd33a18b4c5a87ab24234bd40bd0", "01c592dfa5ed4a0b9aed2f0c7244aef8")

  def index
  end
  
  def search
    search = params[:search]
    artists = RSpotify::Artist.search(search)
    @search = artists.first
    artist_data
  end

  def create
    artist = Artist.new(artist_params)
    if artist.save
      redirect_to root_path
    else
      sender :search
    end
  end

  private
  def artist_data
    @image = @search.images[0]["url"]
    @name = @search.name
    @genre = @search.genres[0]
    @spotify_url = @search.external_urls["spotify"]
  end

  def artist_params
    params.permit(:image, :name, :genre, :spotify_url, :state_id)
  end
end
