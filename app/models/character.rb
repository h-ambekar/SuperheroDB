require "httparty"

class Character < ApplicationRecord
  has_many :films, dependent: :destroy
  has_many :tv_shows, dependent: :destroy
  has_many :video_games, dependent: :destroy
  has_many :likeds, dependent: :destroy
  has_many :users, through: :likeds

  validates :name, presence: true, uniqueness: true
  validates :image_url, presence: true

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
