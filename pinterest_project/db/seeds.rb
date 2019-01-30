# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

15.times do
    user = User.create!(name: Faker::Name.name)
end

20.times do
    pin = Pin.create!(content: Faker::Lovecraft.tome, user: User.all[rand(User.count)])
end

30.times do
    commentary = Commentary.create!(content: Faker::LeagueOfLegends.quote, user: User.all[rand(User.count)], pin: Pin.all[rand(Pin.count)])
end
