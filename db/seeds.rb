# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.destroy_all
10.times do
  user = User.create(
    username: Faker::Name.name,
    avatar: File.new("app/assets/images/stock_photos/artsy_guy.jpeg")
  )
  3.times do
    pic = user.pictures.create(
      caption: Faker::Lorem.sentence,
      image: File.new("app/assets/images/stock_photos/baby.jpeg")
    )
    10.times do
      pic.comments.create(
        body: Faker::Lorem.sentence,
        user_id: rand(1..10)
      )
      pic.likes.create(
        user_id: rand(1..10),
      )
    end
  end
end
