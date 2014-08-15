# == Schema Information
#
# Table name: albums
#
#  id            :integer          not null, primary key
#  artist_id     :integer          not null
#  title         :string(255)      not null
#  genre         :string(255)
#  description   :string(255)
#  year_released :integer
#  created_at    :datetime
#  updated_at    :datetime
#

class Album < ActiveRecord::Base

  validates :artist_id, :title, :genre, :year_released, presence: true

  has_many :songs, class_name "Song", foreign_key: :album_id, primary_key: :id
  belongs_to :artist, class_name: "Artist", foreign_key: :artist_id, primary_key: :id

end
