# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning databasessss...'
Housing.destroy_all
Booking.destroy_all
Guest.destroy_all
Stay.destroy_all

puts 'Database cleaned!'

puts 'adding user'

User.create({
  email: ENV["ADMIN_USER_EMAIL"],
  password: ENV["PASSWORD"]
})

puts 'adding housing'

addresses = ["169 Rue de Fontbelle, Huez", "67 Rue de la Meije, Huez", "200 Avenue des Jeux, Huez"]
names = ["Le Chamois d'or", "Le Pelvoux", "Agence de location"]
prices = [[150, 250, 90, 120], [90, 80, 60, 50], [0, 0, 0, 0]]
zip_code = "38750"
phones = ["0476803132", "0476803014", "0476803640"]
i = 0

while i < 3 do
  housing = Housing.create({
    name: names[i],
    address: addresses[i],
    zip_code: zip_code,
    country: "France",
    price_ve1: prices[i][0],
    price_ve2: prices[i][1],
    price_sa1: prices[i][2],
    price_sa2: prices[i][3],
    phone: phones[i]
    })
  i += 1
end

puts 'housing done!'
