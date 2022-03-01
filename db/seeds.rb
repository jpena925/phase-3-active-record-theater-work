puts "starting seeding"

Audition.destroy_all
Role.destroy_all

10.times do
    Role.create(character_name: Faker::TvShows::SouthPark.character)
end

20.times do 
    Audition.create(actor: Faker::Name.name, 
    location: Faker::Address.city, 
    phone: Faker::PhoneNumber.cell_phone, 
    hired: false, 
    role_id: Role.all.sample.id)
end

puts "finished seeding!"