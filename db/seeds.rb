# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "open-uri"


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
file = URI.open('https://www.sortiraparis.com/images/80/66131/710174-star-wars-eclipse-bande-annonce-pour-le-jeu-signe-quantic-dream-au-game-award.jpg')
meta1.pictures.attach(io: file, filename: 'eclipse.png', content_type: 'image/png')
file = URI.open('https://i.jeuxactus.com/datas/jeux/s/t/star-wars-eclipse/xl/star-wars-eclipse-61b2d0a842731.jpg')
meta1.pictures.attach(io: file, filename: 'eclipse.png', content_type: 'image/png')
file = URI.open('https://static2.srcdn.com/wordpress/wp-content/uploads/2021/12/Star-Wars-Eclipse-Prequel-Ship.jpg')
meta1.pictures.attach(io: file, filename: 'eclipse.png', content_type: 'image/png')


meta2 = Metaverse.new(
  title: "The Expanse",
  category: "future",
  description: "A space universe set two hundred years in the future, The Expanse follows the case of a missing young woman who brings a hardened detective and a rogue ship's captain together in a race across the solar system to expose the greatest conspiracy in human history. If you like futurist scenaries, space ships, space wars and more ... Book it now !",
  price: 649,
  user: user1
)
meta2.save!
file = URI.open('https://sm.ign.com/t/ign_fr/screenshot/default/the-expanse-header-1200x675_xwjz.1280.jpg')
meta2.pictures.attach(io: file, filename: 'expanse.png', content_type: 'image/png')
file = URI.open('https://www.journaldugeek.com/wp-content/blogs.dir/1/files/2016/12/The-Expanse-1.jpg')
meta2.pictures.attach(io: file, filename: 'expanse.png', content_type: 'image/png')
file = URI.open('https://static.wikia.nocookie.net/expanse/images/4/47/PellaConceptship.png/revision/latest?cb=20201223193751')
meta2.pictures.attach(io: file, filename: 'expanse.png', content_type: 'image/png')

meta3 = Metaverse.new(
  title: "Lords of the Metarings",
  category: "fantasy",
  description: "In the Second Age of Middle-earth, the lords of Elves, Dwarves, and Men are given Rings of Power. Unbeknownst to them, the Dark Lord Sauron forges the One Ring in Mount Doom, instilling into it a great part of his power, in order to dominate the other Rings so he might conquer Middle-earth. A fantasy based metaverse where you can be any race, implore magic and let yourself go into the open world ... Book it now !",
  price: 399,
  user: user2
)
meta3.save!
file = URI.open('http://images.gmanews.tv/webpics/2021/11/weta_lotr_2021_11_10_20_26_34.jpg')
meta3.pictures.attach(io: file, filename: 'ring.png', content_type: 'image/png')
file = URI.open('https://actualitte.com/uploads/images/amazonstudios-serie-lord-of-the-rings-saison-2-2021-611637fccc422084209644.jpg')
meta3.pictures.attach(io: file, filename: 'ring.png', content_type: 'image/png')
file = URI.open('https://variety.com/wp-content/uploads/2022/02/The-Lord-of-the-Rings-The-War-of-the-Rohirrim-Variety-Exclusive-16x9-1.jpg')
meta3.pictures.attach(io: file, filename: 'ring.png', content_type: 'image/png')

p 'Oui c\'est long ...'

meta4 = Metaverse.new(
  title: "Hogwards - The Chamber of the Metaverse",
  category: "fantasy",
  description: "In the fantasy world of the well known Harry Potter, dive into this universe and imagie yourself as a wizard student. Upon arrival at the school, the students are sorted into one of four houses—Gryffindor, Hufflepuff, Ravenclaw, or Slytherin. Which one will be yours ? Will you get Hermione like you always imagined it when you where young ? To know ... Book it now !",
  price: 599,
  user: user3
)
meta4.save!
file = URI.open('https://www.gamosaurus.com/wp-content/uploads/AAA/Warner-Bros/Harry-Potter/vignette-harry-potter-rpg-jeu-de-role-hogwarts-a-dark-legacy-rumeurs-theories-leak.jpg')
meta4.pictures.attach(io: file, filename: 'potter.png', content_type: 'image/png')
file = URI.open('https://cdn.pocket-lint.com/r/s/970x/assets/images/155407-games-news-feature-hogwarts-legacy-release-date-formats-and-everything-you-need-to-know-about-the-harry-potter-rpg-image1-qyshi4lowj-jpg.webp')
meta4.pictures.attach(io: file, filename: 'potter.png', content_type: 'image/png')
file = URI.open('https://jolstatic.fr/www/captures/5103/5/146445.jpg')
meta4.pictures.attach(io: file, filename: 'potter.png', content_type: 'image/png')

p "mais c'est normal... "

meta5 = Metaverse.new(
  title: "Middle Age of Darkness",
  category: "history",
  description: "Let yourself go into a world of the past. get your armor, your sword, go fight the dirty british and save the kingdom of France. If you dream of riding a horse, killing peasants and witches, only 599 euros a day ! Book it now !",
  price: 599,
  user: user3
)
meta5.save!
file = URI.open('https://cdnb.artstation.com/p/assets/images/images/002/162/281/large/alexander-dudar-dark-ages-of-anstard-scene-1.jpg?1458073833')
meta5.pictures.attach(io: file, filename: 'middle.png', content_type: 'image/png')
file = URI.open('https://images.ctfassets.net/cnu0m8re1exe/373mnVPWLVwG6R3PM8AzAs/8f713da65f353fbe08b482c59179db61/shutterstock_1104021251.jpg?fm=jpg&fl=progressive&w=660&h=433&fit=fill')
meta5.pictures.attach(io: file, filename: 'middle.png', content_type: 'image/png')
file = URI.open('https://miro.medium.com/max/1192/1*I-ZoS96meroNgORR26HAYA.jpeg')
meta5.pictures.attach(io: file, filename: 'middle.png', content_type: 'image/png')

p "t'inquiète ma gueule, ça marche là"

meta6 = Metaverse.new(
  title: "Far in the West World",
  category: "history",
  description: "Westworld is an exclusive metaverse theme park where those who can afford a ticket can live without limits. In the past time of the conquest of the west, cowboys and indians fight in the old way. Partners Arnold Weber and Robert Ford created lifelike robots that pass for humans called hosts. The hosts allow guests to live out their fantasies (without harming humans) in the park. We know why you want to book this one, you dirty pig. It's expensive, but go ! Book it now !",
  price: 1199,
  user: user4
)
meta6.save!
file = URI.open('https://cdn.sidlee.com/-/media/sidlee/work/hbo/westworld/ww_3.png?mw=1420&hash=53D419150D16B7024C3BCC01794288E1A52A6939')
meta6.pictures.attach(io: file, filename: 'farwest.png', content_type: 'image/png')
file = URI.open('https://www.premiere.fr/sites/default/files/styles/scale_crop_1280x720/public/2018-04/westworld-episode-7_0.jpg')
meta6.pictures.attach(io: file, filename: 'farwest.png', content_type: 'image/png')
file = URI.open('https://thumb.canalplus.pro/http/unsafe/1280x720/filters:quality(80)/img-hapi.canalplus.pro:80/ServiceImage/ImageID/58157145')
meta6.pictures.attach(io: file, filename: 'farwest.png', content_type: 'image/png')

puts 'Metaverses created !  Tu vois ?'

puts "Creating fake Bookings"

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

puts "3 fake bookings created ! "

puts "Creating fake reviews"


review1 = Review.create(
  content: "Incroyable métaverse ce Star Wars Eclipse ! On peut tout faire c'est impressionnant. Je me suis même mis un sabre laser dans le cul, j'avais toujours voulu tester ça avec ma mattraque ! Je recommande.",
  rating: 3,
  user: user3,
  booking: booking1
)

review2 = Review.create(
  content: "Qui veut un salade tomate oignons ? Ah merde je me suis trompé d'onglet... Ouais trop stylé ce metaverse. Book ma gueule !",
  rating: 5,
  user: user4,
  booking: booking1
)

puts "2 fake reviews created ! "
puts
p 'All seeds have been created !'
