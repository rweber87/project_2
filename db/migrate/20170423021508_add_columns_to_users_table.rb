class AddColumnsToUsersTable < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :gender, :string
    add_column :users, :email, :string
    add_column :users, :password, :string
    add_column :users, :image, :string
    add_column :users, :city, :string
    add_column :users, :zip, :string
    add_column :users, :book_genre, :string
    add_column :users, :chuck_norris_fact, :string
    add_column :users, :beer_name, :string
    add_column :users, :food_ingredient, :string
    add_column :users, :gameofthrones_house, :string
    add_column :users, :harry_potter_location, :string
    add_column :users, :job_key_skill, :string
    add_column :users, :space_planet, :string
  end
end
