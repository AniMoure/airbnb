# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
gem 'faker'

5.times do
	dog = Dog.create(
		name: Faker::Name.first_name
	)

	dogsitter = Dogsitter.create(
		first_name: Faker::Name.first_name,
		last_name: Faker::Name.last_name
	)

	city = City.create(
		city_name: Faker::WorldCup.city,
		dog_id: rand((Dog.first.id)..(Dog.last.id)),
		dogsitter_id: rand((Dogsitter.first.id)..(Dogsitter.last.id))
	)

	strolls = Stroll.create(
		city_id: rand((City.first.id)..(City.last.id)),
		dog_id: rand((Dog.first.id)..(Dog.last.id)),
		dogsitter_id: rand((Dogsitter.first.id)..(Dogsitter.last.id))
	)
end