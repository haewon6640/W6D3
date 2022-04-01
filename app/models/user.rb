class User < ApplicationRecord
    validates :username, presence: true, uniqueness: true

    has_many :artworks,
        foreign_key: :artist_id,
        class_name: :Artwork

    has_many :views,
        foreign_key: :viewer_id,
        class_name: :ArtworkShare,
        dependent: :destroy
    
    has_many :shared_artworks,
        through: :views,
        source: :artwork,
        dependent: :destroy

    has_many :comments,
        foreign_key: :user_id,
        class_name: :Comment,
        dependent: :destroy

    has_many :likes,
        foreign_key: :liker_id,
        class_name: :Like

    has_many :liked_artworks,
        through: :likes,
        source: :likeable,
        source_type: "Artwork"
    
    has_many :liked_comments,
        through: :likes,
        source: :likeable,
        source_type: "Comment"
end