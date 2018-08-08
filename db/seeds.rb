# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "creating fake data..."
Restaurant.destroy_all

restaurants_attributes = [
  {
    name: 'Tsukiji',
    address: '5 address avenue',
    category: 'japanese'
  },
  {
    name: 'gradi',
    address: '16 lygon st',
    category: 'italian'
  },
  {
    name: 'chinese restaurant',
    address: 'shanghai street',
    category: 'chinese'
  },
  {
    name: 'belgian waffles',
    address: 'belgian road',
    category: 'belgian'
  },
  {
    name: 'french crepes',
    address: 'hugo street',
    category: 'french'
  }
]

Restaurant.create!(restaurants_attributes)
puts "done!"
