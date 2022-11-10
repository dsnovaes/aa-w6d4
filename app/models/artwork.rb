# == Schema Information
#
# Table name: artworks
#
#  id         :bigint           not null, primary key
#  title      :string
#  image_url  :string
#  artist_id  :bigint
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Artwork < ApplicationRecord
    validates :title, :image_url, :artist_id, presence: true
    validates :title, uniqueness: { scope: :artist_id,
        message: "must be unique by artist" }

    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User,
        dependent: :destroy

    has_many :viewers,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare
    
end
