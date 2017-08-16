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
	user = User.create(
		first_name: Faker::Omniauth.facebook[:info][:first_name],
		last_name: Faker::Omniauth.facebook[:info][:last_name],
    password: '123456',
    password_confirmation: '123456',
		gender: ['male', 'female'].sample,
		age: (14..70).to_a.sample,
		email: Faker::Omniauth.facebook[:info][:email],
		profile_picture: Faker::Omniauth.facebook[:info][:image],
		bio: Faker::MostInterestingManInTheWorld.quote
		)

end


skills = ["Director",
"Assistant Director",
"Producer",
"Line Producer",
"Script Supervisor",
"Director of Photography",
"Camera Operator",
"Camera Assistant",
"Steadicam",
"Casting Director",
"Costume/Wardrobe",
"Hair/Make-up",
"Production Assistant",
"Grip",
"Gaffer",
"Boom Operator",
"Sound Mixer",
"Art Director",
"Prop Master",
"Craft Services",
"Special Effects",
"Stunts",
"Transportation",
"Post-Production"]

skills.each do |skill|
  Skill.create(title: skill)
end

puts 'Finished!'

