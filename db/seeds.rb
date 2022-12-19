puts "Seeding data..."

20.times do
    alien = Alien.create(
        name: Faker::Name.first_name,
        earth_disguise_name: Faker::Name.first_name,
        home_planet: Faker::Space.planet,
        light_years_to_home_planet: rand(0..60)
    )
    earthling = Earthling.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        job: Faker::Job.title
    )
    Visitation.create(
        date: rand(0..60),
        alien_id: alien.id,
        earthling_id: earthling.id
    )
end

puts "Done seeding"