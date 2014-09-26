# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  length     :integer
#  created_at :datetime
#  updated_at :datetime
#  album_id   :integer
#  artist_id  :integer
#

class Song < ActiveRecord::Base

  validates :title, presence: true

  belongs_to :album, class_name: "Album", foreign_key: :album_id, primary_key: :id
  belongs_to :artist, class_name: "Artist", foreign_key: :artist_id, primary_key: :id

  mount_uploader :music, MusicUploader
end
