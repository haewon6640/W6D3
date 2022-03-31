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
Artwork.create(artist_id:5, image_url: "google.com",title: "The Scream")
Artwork.create(artist_id:6, image_url: "google.com",title: "Starry, Starry Night")
Artwork.create(artist_id:7, image_url: "google.com",title: "The David")
Artwork.create(artist_id:5, image_url: "google.com",title: "Mona Lisa")
Artwork.create(artist_id:8, image_url: "google.com",title: "The Last Supper")
ArtworkShare.create(artwork_id: 1, viewer_id: 5)
ArtworkShare.create(artwork_id: 2, viewer_id: 6)
ArtworkShare.create(artwork_id: 3, viewer_id: 6)
ArtworkShare.create(artwork_id: 4, viewer_id: 8)
ArtworkShare.create(artwork_id: 4, viewer_id: 9)