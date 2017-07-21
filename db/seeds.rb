# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Like.destroy_all
Comment.destroy_all
Picture.destroy_all
User.destroy_all

names_array = ['Raja', 'Kelsey', 'Dylan', 'Gus', "Rahat", "Yoosters", "Aaron", "Wan", "Evans", "Kevin", ]

avy = "app/assets/images/stock_photos/avatar.jpg"

pictures_array = ["app/assets/images/stock_photos/artsy_guy.jpeg", "app/assets/images/stock_photos/baby.jpeg", "app/assets/images/stock_photos/be_lake.jpeg", "app/assets/images/stock_photos/beanie_man.jpeg", "app/assets/images/stock_photos/cafe.jpeg", "app/assets/images/stock_photos/cigarette.jpeg", "app/assets/images/stock_photos/eyes.jpeg", "app/assets/images/stock_photos/hat_girl.jpeg", "app/assets/images/stock_photos/lineup.jpeg", "app/assets/images/stock_photos/making_a_face.jpeg", "app/assets/images/stock_photos/scenery.jpeg", "app/assets/images/stock_photos/smile.jpeg", "app/assets/images/stock_photos/winter_clothes.jpeg"]

comments_array = ["Great picture!", "Looking good!", "Wow!", "Nice!"]

captions_array = ["Check this out", "I took this on vacation", "#hashtag"]

users = []

names_array.each do |name|
  user = User.create(username: name, avatar: File.new(avy))
  users << user
end

pictures = []
users.each do |user|
  3.times do
    pic = user.pictures.create(
    caption: captions_array.sample,
    image: File.new(pictures_array.sample))
    pictures << pic
  end
end

pictures.each do |pic|
  10.times do
  pic.comments.create(
    body: comments_array.sample,
    commenter: users.sample
  )
  pic.likes.create(
    liker: users.sample
  )
  end
end

# 10.times do
#   user = User.create(
#     username: Faker::Name.name,
#     avatar: File.new("app/assets/images/stock_photos/artsy_guy.jpeg")
#   )
#   3.times do
#     pic = user.pictures.create(
#       caption: Faker::Lorem.sentence,
#       image: File.new("app/assets/images/stock_photos/baby.jpeg")
#     )
#     10.times do
#       pic.comments.create(
#         body: Faker::Lorem.sentence,
#         user_id: rand(1..10)
#       )
#       pic.likes.create(
#         user_id: rand(1..10)
#       )
#     end
#   end
# end
