# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  length     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Song < ActiveRecord::Base

  validates :title, presence: true
end
