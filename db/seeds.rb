# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

buildings = Building.create([
  {name: 'Rory Tower', country: 'UK', address:'123 Westminster Road, London, SE1 7AA', rent_per_floor:24.00, number_of_floors:100}
])


buildings[0].offices.create!([{floor_number: 1},{floor_number: 2},{floor_number: 3},{floor_number: 4}])
