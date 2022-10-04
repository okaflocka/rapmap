class Artist < ApplicationRecord
  
  validates :image, :name, :genre, :spotify_url, :state_id, presence: true
  validates :name, :spotify_url,  uniqueness: true

  def self.stateSearch(state_id)
    Artist.where( state_id: state_id)
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :state

end
