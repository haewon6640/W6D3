# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'nobleport')
User.create(username: 'coolmartin')
User.create(username: 'chuckwoody')
User.create(username: 'harryjerry')
User.create(username: 'appleseed')
Artwork.create(artist_id:1, image_url: "google.com",title: "The Scream")
Artwork.create(artist_id:2, image_url: "google.com",title: "Starry, Starry Night")
Artwork.create(artist_id:3, image_url: "google.com",title: "The David")
Artwork.create(artist_id:1, image_url: "google.com",title: "Mona Lisa")
Artwork.create(artist_id:4, image_url: "google.com",title: "The Last Supper")
ArtworkShare.create(artwork_id: 1, viewer_id: 1)
ArtworkShare.create(artwork_id: 2, viewer_id: 2)
ArtworkShare.create(artwork_id: 3, viewer_id: 3)
ArtworkShare.create(artwork_id: 4, viewer_id: 5)
ArtworkShare.create(artwork_id: 4, viewer_id: 5)
Comment.create(body: 'This painting sucks!', artwork_id: 2, user_id:3)
Comment.create(body: 'Very nice!', artwork_id: 4, user_id:2)
Comment.create(body: 'What is this?', artwork_id: 1, user_id:2)
Comment.create(body: 'Wow', artwork_id: 2, user_id:1)
Comment.create(body: 'I can draw better than this, and I suck!', artwork_id: 4, user_id:1)