# SEED USERS

require 'faker'

User.all.each do |user|
  user.update(
  	book_genre: Faker::Book.genre,
		chuck_norris_fact: Faker::ChuckNorris.fact,
		beer_name: Faker::Beer.name,
		food_ingredient: Faker::Food.ingredient,
		gameofthrones_house: Faker::GameOfThrones.house,
		harry_potter_location: Faker::HarryPotter.location,
		job_key_skill: Faker::Job.key_skill,
		space_planet: Faker::Space.planet
  )
end
