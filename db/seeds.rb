# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Marketplace.destroy_all
Marketplace.create([
    {
		image: "Football.jpg",
		name: "Football",
		price: 39.99,
		description: "Average quality leather football.",
		quantity: 314,
    },
    {
        image: "Soccerball.jpg",
		name: "Soccerball",
		price: 121.00,
		description: "Really cool non-american football.",
		quantity: 420,
    },
])