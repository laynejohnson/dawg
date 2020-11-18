# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "faker"
User.destroy_all
Dog.destroy_all
puts "repopulating..."

#Need to assign user_id when seeding
adam = User.create(
  email: "imitalian@email.com",
  password: "123456"
  name: "Adam"
  address: "5333 casgrain Montreal Quebec"
)


10.times do
  dog = Dog.create(
    name: Faker::Creature::Dog.name,
    breed: Faker::Creature::Dog.breed,
    address: Faker::Address.full_address ,
    age: rand(1..12),
    size: %w[small medium large ].sample,
    description: Faker::Creature::Dog.meme_phrase,
    user: adam
  )
end