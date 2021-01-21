puts 'Clearing database...'
Flat.destroy_all

puts 'Creating flats...'

10.times do
    Flat.create(
      name: Faker::Address.street_name,
      address: Faker::Address.street_address,
      description: Faker::Movies::HarryPotter.quote,
      price_per_night: rand(100..175),
      number_of_guests: rand(1..10)
    )
end

puts 'Finished!'
