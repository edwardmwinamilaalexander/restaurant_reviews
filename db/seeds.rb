# Clear existing records to avoid duplicates when seeding
Restaurant.destroy_all
Review.destroy_all

# Create Restaurants
restaurant1 = Restaurant.create(name: "Sushi Zen", address: "456 Tokyo Dr", phone_number: "123-456-7890", category: "japanese")
restaurant2 = Restaurant.create(name: "Pasta La Vista", address: "789 Rome St", phone_number: "987-654-3210", category: "italian")
restaurant3 = Restaurant.create(name: "Le Petit Bistro", address: "123 Rue Paris", phone_number: "555-123-4567", category: "french")
restaurant4 = Restaurant.create(name: "Wok & Roll", address: "234 Beijing Ave", phone_number: "555-234-5678", category: "chinese")
restaurant5 = Restaurant.create(name: "Brasserie Belge", address: "890 Brussels Blvd", phone_number: "555-345-6789", category: "belgian")

# Create Reviews for each Restaurant
Review.create(content: "Amazing sushi, fresh and delicious!", rating: 5, restaurant: restaurant1)
Review.create(content: "A bit too salty for my taste, but good overall.", rating: 3, restaurant: restaurant1)

Review.create(content: "Best pasta I’ve ever had. The sauce is incredible.", rating: 5, restaurant: restaurant2)
Review.create(content: "Decent, but not mind-blowing. Needs more seasoning.", rating: 3, restaurant: restaurant2)

Review.create(content: "Lovely atmosphere and great French cuisine.", rating: 4, restaurant: restaurant3)
Review.create(content: "A charming little place. Will definitely return!", rating: 5, restaurant: restaurant3)

Review.create(content: "Tasty, but the portions could be bigger.", rating: 3, restaurant: restaurant4)
Review.create(content: "Wok & Roll is fantastic. The dumplings are a must-try!", rating: 4, restaurant: restaurant4)

Review.create(content: "The Belgian fries are to die for!", rating: 5, restaurant: restaurant5)
Review.create(content: "Great place, but the wait was too long.", rating: 3, restaurant: restaurant5)

puts "Seeding completed! #{Restaurant.count} restaurants and #{Review.count} reviews created."
