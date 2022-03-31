class Artwork < ApplicationRecord 
    validates :artist_id, presence: true
    validates :title, presence: true
    validates :artist_id, uniqueness: {scope: :title, message: "Only one valid combination."}
    belongs_to :artist,
        class_name: :User 
    
    has_many :shares,
        foreign_key: :artwork_id,
        class_name: :ArtworkShare 

    has_many :shared_viewers,
        through: :shares,
        source: :viewer
end