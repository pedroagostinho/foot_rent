Club.destroy_all
Player.destroy_all
Booking.destroy_all
Review.destroy_all
Stat.destroy_all

# number_of_clubs = 10
# number_of_players = 10
# number_of_bookings = 50
# number_of_reviews = 50

# number_of_clubs.times do
#   club = Club.new(
#     email: Faker::Internet.email,
#     password: "jonas10",
#     name: Faker::Football.team,
#     address: Faker::Address.street_address,
#     city: Faker::Address.city
#   )
#   club.save!
# end

# number_of_players.times do
#   player = Player.new(
#     # photo: URI("https://picsum.photos/100/50/?random"),
#     name: Faker::Football.player,
#     position: [ "Goalkeeper", "Defender", "Midfielder", "Forward"].sample,
#     value_per_match: rand(100...1000),
#     nationality: Faker::Address.country,
#     age: rand(16..36),
#     availability: true,
#     club_id: rand((Club.first.id)..(Club.last.id))
#   )
#   player.save!
# end

# number_of_reviews.times do
#   review = Review.new(
#     content: Faker::Lorem.paragraph,
#     stars: rand(0..5),
#     player_id: rand((Player.first.id)..(Player.last.id)),
#     club_id: rand((Club.first.id)..(Club.last.id))
#   )
#   review.save!
# end

# list_id = Player.all.map { |p| p.id }

# list_id.each do |id|
#   stat = Stat.new(
#     goals: rand(0..5),
#     assists: rand(0..5),
#     games_played: rand(0..5),
#     form: ['low', 'medium', 'high'].sample,
#     player_id: id,
#   )
#   stat.save!
# end

