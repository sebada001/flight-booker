# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

# Faker::Name.name      #=> "Christophe Bartell"

# Faker::Address.full_address #=> "5479 William Way, East Sonnyhaven, LA 63637"

# Faker::Markdown.emphasis #=> "Quo qui aperiam. Amet corrupti distinctio. Sit quia *dolor.*"

# Faker::TvShows::RuPaul.queen #=> "Violet Chachki"

# Faker::Alphanumeric.alpha(number: 10) #=> "zlvubkrwga"

# Faker::ProgrammingLanguage.name #=> "Ruby"

puts "Seeding..."

Airport.create(name: "NYC")
Airport.create(name: "MIA")
Airport.create(name: "LAX")
Airport.create(name: "SDQ")

Flight.create(start_date: Time.now, departure_airport_id: 1, arrival_airport_id: 2, duration: 1.5)
Flight.create(start_date: Time.now, departure_airport_id: 1, arrival_airport_id: 3, duration: 4.25)
Flight.create(start_date: Time.now, departure_airport_id: 2, arrival_airport_id: 1, duration: 1.5)
Flight.create(start_date: Time.now, departure_airport_id: 2, arrival_airport_id: 3, duration: 4.75)
Flight.create(start_date: Time.now, departure_airport_id: 2, arrival_airport_id: 4, duration: 2)
Flight.create(start_date: Time.now, departure_airport_id: 3, arrival_airport_id: 1, duration: 4.25)
Flight.create(start_date: Time.now, departure_airport_id: 3, arrival_airport_id: 2, duration: 4.75)
Flight.create(start_date: Time.now, departure_airport_id: 4, arrival_airport_id: 2, duration: 2)

puts "Seeding done."