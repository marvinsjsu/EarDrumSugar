class CreateAlbum < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.integer :artist_id, null: false
      t.string :title, null: false
      t.string :genre
      t.string :description
      t.integer :year_released
      t.timestamps
    end
    add_index :albums, :title
    add_index :albums, [:artist_id, :title]
  end
end
