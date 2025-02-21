require 'faker'
require 'httparty'

puts "Checking for existing superheroes..."
if Character.count.zero?
  puts "No superheroes found. Fetching from API..."
  Character.fetch_superheroes
  puts "Superheroes added!"
else
  puts "Superheroes already exist. Skipping API fetch."
end

puts "Seeding Films, TV Shows, and Video Games..."
Character.all.each do |character|
  2.times do
    Film.create!(name: "#{character.name} Movie #{rand(1..5)}", character: character)
    TvShow.create!(name: "#{character.name} TV Show #{rand(1..5)}", character: character)
    VideoGame.create!(name: "#{character.name} Game #{rand(1..5)}", character: character)
  end
end

puts "Seeding Users..."
10.times do
  User.create!(name: Faker::Name.name, email: Faker::Internet.email)
end

puts "Assigning Random Likes..."
User.all.each do |user|
  rand(5..10).times do
    Liked.create!(user: user, character: Character.order("RANDOM()").first)
  end
end

puts "Database Seeding Complete!"
