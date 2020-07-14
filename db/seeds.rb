# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

buildings = Building.create([
  {name: 'Rory Tower', country: 'UK', address:'123 Westminster Road, London, SE1 7AA', rent_per_floor:24.00, number_of_floors:100},
  {name: 'Eiffel Tower', country: 'France', address:'123 Paris Road, Paris, SE1 7AA', rent_per_floor:2.00, number_of_floors:5}
])


companies = Company.create([{name: "Rory corp"},{name: "HonHonHon"}])


buildings[0].offices.create!([
  {floor_number: 1, company_id:1},
  {floor_number: 2,company_id:1},
  {floor_number: 30,company_id:1},
  {floor_number: 45,company_id:1},
  {floor_number: 52, company_id: 2},
  {floor_number: 65, company_id: 2}
])

buildings[1].offices.create!([
  {floor_number: 1, company_id:2},
  {floor_number: 2,company_id:2},
  {floor_number: 3,company_id:2},
  {floor_number: 4,company_id:2},
  {floor_number: 5, company_id: 1}
])


employees = Employee.create([
  {name: "Hank", title: "CEO", company_id: 1},
  {name: "Peggy", title: "CFO", company_id: 1},
  {name: "Bobby", title: "HR Manager", company_id: 1}
])
