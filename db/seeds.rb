# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Metaverse.destroy_all
User.destroy_all

p "creating a user and metaverse"

user = User.new(
  email: "toto@gmail.com",
  first_name: "toto",
  last_name: "tata",
  password: "azertyu"
)
user.save!
p "toto a ete crée"
tata = Metaverse.new(
  title: "top meta",
  description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
  price: 700,
  user: user
)
tata.save!
p "son meta a été crée"

6.times do
  p "creating user"
  use = User.new(
    email: Faker::Internet.email,
    first_name: Faker::Name.name,
    last_name: Faker::Name.name,
    password: rand(100_000..999_999)
  )
  use.save!
  p "creating metaverse"
  rand(1..3).times do
    meta = Metaverse.new(
      title: Faker::University.name,
      description: "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
      price: rand(500..1500),
      user: use
    )
    meta.save!
  end
end



p 'data has been created'
