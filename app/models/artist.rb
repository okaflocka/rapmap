class Artist < ApplicationRecord
  
  validates :image, :name, :genre, :spotify_url, :state_id, presence: true
  validates :name, :spotify_url,  uniqueness: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :state

end
