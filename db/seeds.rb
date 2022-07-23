# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
SportsEquipment.destroy_all

puts 'Creating flats...'
equipment1 = {
  category: 'Tennis racket',
  size: 'L',
  price: 45.6,
  condition: 4,
  availability: true,
  user_id: 1
}
equipment2 = {
  category: 'Padel racket',
  size: 'XL',
  price: 33.6,
  condition: 2,
  availability: false,
  user_id: 2
}
equipment3 = {
  category: 'Ping-pong racket',
  size: 'S',
  price: 15.6,
  condition: 5,
  availability: true,
  user_id: 2
}
equipment4 = {
  category: 'Tennis racket',
  size: 'M',
  price: 55.6,
  condition: 5,
  availability: false,
  user_id: 1
}
equipment5 = {
  category: 'badminton racket',
  size: 'XS',
  price: 15.6,
  condition: 3,
  availability: true,
  user_id: 2
}
[equipment1, equipment2, equipment3, equipment4, equipment5].each do |attributes|
  equipment = SportsEquipment.create!(attributes)
  puts "Created #{equipment.category}"
end
puts 'Finished!'
