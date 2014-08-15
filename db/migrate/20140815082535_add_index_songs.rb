class AddIndexSongs < ActiveRecord::Migration
  def change
    add_index :songs, [:album_id, :artist_id]
  end
end
