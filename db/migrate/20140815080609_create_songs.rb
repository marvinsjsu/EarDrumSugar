class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.integer :length
      t.timestamps
    end
    add_index :songs, :title
  end
end
