# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
User.destroy_all

puts 'Creating users...'
10.times do
	user = User.new(
		first_name: Faker::Omniauth.facebook.info.first_name
		last_name: Faker::Omniauth.facebook.info.last_name
		gender: Faker::Omniauth.facebook.extra.gender
		age: (14..70).sample
		email: Faker::Omniauth.facebook.info.email
		image: Faker::Omniauth.facebook.info.image
		verified: Faker::Omniauth.facebook.info.verified
		bio: Faker::MostInterestingManInTheWorld.quote
		)
	user.save
end

puts 'Finished!'

# Facebook Omniauth Faker
# Faker::Omniauth.facebook #=>
# {
#   provider: 'facebook',
#   uid: '1234567',
#   info: {
#     email: 'joe@bloggs.com',
#     name: 'Joe Bloggs',
#     first_name: 'Joe',
#     last_name: 'Bloggs',
#     image: 'http://graph.facebook.com/1234567/picture?type=square',
#     verified: true
#   },
#   credentials: {
#     token: 'ABCDEF...',
#     expires_at: 1321747205,
#     expires: true
#   },
#   extra: {
#     raw_info: {
#       id: '1234567',
#       name: 'Joe Bloggs',
#       first_name: 'Joe',
#       last_name: 'Bloggs',
#       link: 'http://www.facebook.com/jbloggs',
#       username: 'jbloggs',
#       location: { id: '123456789', name: 'Palo Alto, California' },
#       gender: 'male',
#       email: 'joe@bloggs.com',
#       timezone: -8,
#       locale: 'en_US',
#       verified: true,
#       updated_time: '2011-11-11T06:21:03+0000',
#     }
#   }
# }
