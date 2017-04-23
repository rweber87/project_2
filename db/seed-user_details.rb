# SEED USERS

require 'faker'

User.all.each do |user|
  user.update(
  	book_genre: Faker::Book.genre,
		chuck_norris_fact: Faker::ChuckNorris.fact,
		favorite_beer_name: Faker::Beer.name,
		favorite_food: Faker::Food.ingredient,
		gameofthrones_house: Faker::GameOfThrones.house,
		harry_potter_location: Faker::HarryPotter.location,
		best_skill_in_life: Faker::Job.key_skill,
		planet_of_origin: Faker::Space.planet
  )
end
