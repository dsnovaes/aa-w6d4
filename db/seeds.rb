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