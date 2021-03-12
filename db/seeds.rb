# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Comment.destroy_all
Movie.destroy_all
User.destroy_all

m1 = Movie.create(name: "The Lion King", release_date: 1994, image: "https://upload.wikimedia.org/wikipedia/en/3/3d/The_Lion_King_poster.jpg", likes: 0)
m2 = Movie.create(name: "Toy Story", release_date: 1995, image: "https://upload.wikimedia.org/wikipedia/en/1/13/Toy_Story.jpg", likes: 0)
m3 = Movie.create(name: "The Incredibles", release_date: 2004, image: "https://m.media-amazon.com/images/M/MV5BMTY5OTU0OTc2NV5BMl5BanBnXkFtZTcwMzU4MDcyMQ@@._V1_.jpg", likes: 0)

u1 = User.create(name: "Jon Snow")
u2 = User.create(name: "Arya Stark")
u3 = User.create(name: "Khal Drogo")

c1 = Comment.create(comments: "The Lion King is the G.O.A.T!!!", movie: m1, user: u2)
c2 = Comment.create(comments: "Toy Story will always have a special place in my heart.", movie: m2, user: u1)
c4 = Comment.create(comments: "Quick! Andy's coming!", movie: m2, user: u3)
c5 = Comment.create(comments: "Woody's makeover in Toy Story 2, is my all time favorite scene.", movie: m2, user: u2)
c3 = Comment.create(comments: "Let's hope we don't have to wait another 14 years for The Incredibles 3, if they make one.", movie: m3, user: u3)

puts 'Great job, Ange :-)'