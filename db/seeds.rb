# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create! :name => 'John Doe', :email => 'john@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'

5.times do |i|
  Recipe.create!(name: "Recipe ##{i}", preparation_time: "#{i} mins", cooking_time: "#{i} hrs", description: "Description of recipe ##{i}", public: false, user_id: user.id)
end