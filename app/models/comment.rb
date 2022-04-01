class Comment < ApplicationRecord
    belongs_to :user
    belongs_to :artwork 
    has_many :likes,
        as: :likeable

    has_many :likers,
        through: :likes,
        source: :liker,
        dependent: :destroy
end
