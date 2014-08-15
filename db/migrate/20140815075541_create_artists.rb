class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.text :description
    end
    add_index :artists, :name, unique: true
  end
end
