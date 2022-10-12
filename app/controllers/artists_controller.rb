class ArtistsController < ApplicationController

  def index
  end
  
  def search
    search = params[:search]
    artists = RSpotify::Artist.search(search)
    @search = artists.first
    url = @search.external_urls["spotify"]
    @search_exist = Artist.where(spotify_url: url).take
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
  
  def edit
    @search = Artist.find(params[:id]) 
  end

  def update
    if Artist.update(artist_params)
      redirect_to root_path
    end
  end

  def destroy
    @artist = Artist.find(params[:id])
    if @artist.destroy
      redirect_to root_path
    end
  end

  def state
    @state = Map.where(state_code: params[:code]).take
    @state_artists = Artist.stateSearch(@state.id)
  end

  private

  def artist_params
    params.permit(:image, :name, :genre, :spotify_url, :state_id)
  end

end
