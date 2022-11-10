class Artwork < ApplicationRecord
    validates :title, :image_url, :artist_id, presence: true
    validates :title, uniqueness: { scope: :artist_id,
        message: "must be unique by artist" }

    belongs_to :artist,
        foreign_key: :artist_id,
        class_name: :User,
        dependent: :destroy
end