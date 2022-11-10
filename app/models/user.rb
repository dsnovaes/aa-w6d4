# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string           not null
#
class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true

  has_many :artworks,
    foreign_key: :artist_id,
    class_name: :Artwork,
    dependent: :destroy,
    inverse_of: :artist

  has_many :views,
    foreign_key: :viewer_id,
    class_name: :ArtworkShare,
    dependent: :destroy

  has_many :shared_artworks,
    through: :views,
    source: :artwork
end
