# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = ['Luxury', 'Economy', 'Resort']

20.times do
  Hotel.create(
    name: Faker::Company.name,
    remote_image_url: Faker::LoremFlickr.image,
    address: Faker::Address.full_address,
    describe: Faker::Lorem.paragraph,
    title: Faker::Lorem.sentence,
    category: categories.sample
  )
end