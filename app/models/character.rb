require "httparty"

class Character < ApplicationRecord
  def self.fetch_superheroes
    token = ENV["SUPERHERO_API_KEY"]
    if token.nil?
      puts "ERROR: API Key is missing!"
      return
    end

    (501..700).each do |id|
      url = "https://superheroapi.com/api/#{token}/#{id}"
      response = HTTParty.get(url)
      data = JSON.parse(response.body) rescue {}

      if data["response"] == "error"
        puts "Superhero ID #{id} not found!"
        next
      end

      puts "Adding #{data["name"]} to the database..."

      Character.create!(
        name: data["name"],
        image_url: data["image"]["url"],
        full_name: data["biography"]["full-name"],
        publisher: data["biography"]["publisher"],
        first_appearance: data["biography"]["first-appearance"],
        alignment: data["biography"]["alignment"]
      )
    end
  end
end
