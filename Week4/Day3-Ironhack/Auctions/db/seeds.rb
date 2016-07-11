# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: "Pedro", email: "pedro@pedro.com")
User.create(name: "Elena", email: "elena@elena.com")
User.create(name: "Lorenzo", email: "lorenzo@lorenzo.com")
User.create(name: "Jordi", email: "jordi@jordi.com")

Product.create(user_id: 1, title: "Moto", description: "BMW 1200 GS", deadline: "2016-10-12", minimum_bet: 1200)

Bet.create( amount: 1500, user_id: 2, product_id: 1)
