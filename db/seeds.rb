# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
Review.destroy_all
Booking.destroy_all
Metaverse.destroy_all
User.destroy_all

# Users seeds

puts "creating 4 users (Josephine, Toufik, Momo, Maxime)"

user1 = User.new(
  email: "maxime@meta.fr",
  first_name: "Maxime",
  last_name: "Meta",
  password: "azertyu"
)
user1.save!

user2 = User.new(
  email: "josephine@meta.fr",
  first_name: "Josephine",
  last_name: "Meta",
  password: "azertyu"
)
user2.save!

user3 = User.new(
  email: "toufik@meta.fr",
  first_name: "Toufik",
  last_name: "Meta",
  password: "azertyu"
)
user3.save!

user4 = User.new(
  email: "momo@meta.fr",
  first_name: "Momo",
  last_name: "Meta",
  password: "azertyu"
)
user4.save!

puts 'users created !'

## Metasverses seeds (6 de base)

puts 'Creating 6 metaverses...'

meta1 = Metaverse.new(
  title: "Star Wars Eclipse",
  category: "future",
  description: "The High Republic was the golden age of the Jedi — and fans will experience it in a dark Star Wars metaverse. In a distinct future, you will experience the force, let yourself to the darth or light side.Space, ships, laser, blaster... You will experience war and stars. Book it now !",
  price: 729,
  user: user1
)
meta1.save!

meta2 = Metaverse.new(
  title: "The Expanse",
  category: "future",
  description: "A space universe set two hundred years in the future, The Expanse follows the case of a missing young woman who brings a hardened detective and a rogue ship's captain together in a race across the solar system to expose the greatest conspiracy in human history. If you like futurist scenaries, space ships, space wars and more ... Book it now !",
  price: 649,
  user: user1
)
meta2.save!

meta3 = Metaverse.new(
  title: "Lords of the Metarings",
  category: "fantasy",
  description: "In the Second Age of Middle-earth, the lords of Elves, Dwarves, and Men are given Rings of Power. Unbeknownst to them, the Dark Lord Sauron forges the One Ring in Mount Doom, instilling into it a great part of his power, in order to dominate the other Rings so he might conquer Middle-earth. A fantasy based metaverse where you can be any race, implore magic and let yourself go into the open world ... Book it now !",
  price: 399,
  user: user2
)
meta3.save!

meta4 = Metaverse.new(
  title: "Hogwards - The Chamber of the Metaverse",
  category: "fantasy",
  description: "In the fantasy world of the well known Harry Potter, dive into this universe and imagie yourself as a wizard student. Upon arrival at the school, the students are sorted into one of four houses—Gryffindor, Hufflepuff, Ravenclaw, or Slytherin. Which one will be yours ? Will you get Hermione like you always imagined it when you where young ? To know ... Book it now !",
  price: 599,
  user: user3
)
meta4.save!

meta5 = Metaverse.new(
  title: "Middle Age of Darkness",
  category: "history",
  description: "Let yourself go into a world of the past. get your armor, your sword, go fight the dirty british and save the kingdom of France. If you dream of riding a horse, killing peasants and witches, only 599 euros a day ! Book it now !",
  price: 599,
  user: user3
)
meta5.save!

meta6 = Metaverse.new(
  title: "Far in the West World",
  category: "history",
  description: "Westworld is an exclusive metaverse theme park where those who can afford a ticket can live without limits. In the past time of the conquest of the west, cowboys and indians fight in the old way. Partners Arnold Weber and Robert Ford created lifelike robots that pass for humans called hosts. The hosts allow guests to live out their fantasies (without harming humans) in the park. We know why you want to book this one, you dirty pig. It's expensive, but go ! Book it now !",
  price: 1199,
  user: user4
)
meta6.save!

puts 'Metaverses created !'

puts "Creating Bookings"
booking1 = Booking.create(
  start_at: Date.today - 2,
  end_at: Date.today - 2,
  user: user3,
  metaverse: meta1
)

booking2 = Booking.create(
  start_at: Date.today - 1,
  end_at: Date.today - 1,
  user: user3,
  metaverse: meta1
)

booking3 = Booking.create(
  start_at: Date.today + 1,
  end_at: Date.today + 1,
  user: user3,
  metaverse: meta1
)


review1 =Review.create(
  content: "toto",
  rating: 3,
  user: user3,
  booking: booking1
)
p 'data has been created'
