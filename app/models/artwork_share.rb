class ArtworkShare < ApplicationRecord
    validates :artwork_id, presence: true
    validates :viewer_id, presence: true
    validates :viewer_id, uniqueness: {scope: :artwork_id, message: "unique combination"}
    belongs_to :artwork
    belongs_to :viewer,
        class_name: :User 

end