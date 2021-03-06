# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Flat.destroy_all

puts 'Creating flats...'
garden_flat = { name: 'Light & Spacious Garden Flat London',
                address: '10 Clifton Gardens London W9 1DT',
                description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
                price_per_night: 75,
                number_of_guests: 3 }

river_thames = { name: 'Stylish House Close to River Thames',
                 address: '5 Queensmill Road London SW6 6JP',
                 description: 'Lovely warm comfortable and stylishly furnished house. Private bedroom and bathroom with shared living areas.',
                 price_per_night: 65,
                 number_of_guests: 2 }

clock_tower = { name: 'St Pancras Clock Tower Guest Suite',
                address: 'Euston Rd London N1C 4QP',
                description: 'A mini apartment within the clock tower apartment at St Pancras Station, with its own en suite bathroom and kitchen and sitting area.',
                price_per_night: 110,
                number_of_guests: 2 }

[garden_flat, river_thames, clock_tower].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts 'Finished!'
