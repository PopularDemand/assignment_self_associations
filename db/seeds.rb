# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

NUM_ADDRESSES = 20

NUM_ADDRESSES.times do |n|
  House.create({
    address: Faker::Address.street_address
    })
end
house_ids = House.pluck(:id)

house_ids.each do |id|
  HousesNeighbor.create({
    house_id: id,
    neighbor_id: house_ids.sample
  })
  HousesNeighbor.create({
    house_id: id,
    neighbor_id: house_ids.sample
  })
end
