# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

u1 = User.new({username:"alice"})
u2 = User.new({username:"bob"})
u3 = User.new({username:"charlie"})
u4 = User.new({username:"dennis"})
u5 = User.new({username:"edward"})

u1.save!
u2.save!
u3.save!
u4.save!
u5.save!

a1 = Artwork.new(title: "Blue", image_url: "blue.jpg", artist_id: 1)
a2 = Artwork.new(title: "Brown", image_url: "brown.jpg", artist_id: 1)
a3 = Artwork.new(title: "Red", image_url: "red.jpg", artist_id: 2)
a4 = Artwork.new(title: "Green", image_url: "green.jpg", artist_id: 3)
a5 = Artwork.new(title: "Blue", image_url: "blu.jpg", artist_id: 4)

a1.save!
a2.save!
a3.save!
a4.save!
a5.save!