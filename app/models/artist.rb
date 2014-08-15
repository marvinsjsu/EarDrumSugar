# == Schema Information
#
# Table name: artists
#
#  id          :integer          not null, primary key
#  name        :string(255)      not null
#  description :text
#  created_at  :datetime
#  modified_at :datetime
#

class Artist < ActiveRecord::Base

  validates :name, presence: true, uniqueness: true

  has_many :albums, class_name: "Album", foreign_key: :artist_id, primary_key: :id
  has_many :songs, class_name: "Song", through: :albums  	
  
end
