class CreateArtists < ActiveRecord::Migration[6.0]
  def change
    create_table :artists do |t|
      t.string :image, null: false
      t.string :name, null: false
      t.string :genre, null: false
      t.text :spotify_url, null: false
      t.integer :state_id, null: false
      t.timestamps
    end
  end
end
