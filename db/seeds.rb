# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
puts "begin seeding"

Item.destroy_all




name_item = ["chair", "box", "shoes", "glass"]
category_item = ["home", "storage", "clothes", "glassware"]
era_item = ["1920 - 1930", "1930 - 1940", "1950 - 1960", "1970 - 1980"]
photos = ["chair.jpeg", "box.jpeg", "shoes.jpeg", "glass.jpeg"]

    name_item.each_with_index do |item, index|
      item = Item.create!(
        name: item,
        category: category_item[index],
        availability: true,
        era: era_item[index]
      )
      item.photos.attach(io: File.open("app/assets/images/#{photos[index]}"), filename: "#{photos[index]}")
      index += 1
      item.save!
    end

puts "end seeding"
