# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

company_names = ["Toys-R-I", "CPC", "init-0-edu", "Slicez Barber Shop"]
industries = ["Toy", "Medical", "Education", "Services"]
4.times do |index|
    Company.create(name: company_names[index], industry: industries[index], size: 10, price_plan: "Middle")
end