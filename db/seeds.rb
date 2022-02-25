# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Creating Users 🕺'

u1 = User.create(username: 'jb0508', password: 'password', password_confirmation: 'password', balance: 1000)

u2 = User.create(username: 'jb0925', password: 'password', password_confirmation: 'password', balance: 1000)

puts 'Initializing Bets 📊'

b1 = Bet.create(bet: 'Over 2.5 Goals', game: 'Liverpool FC v Chelsea FC', wager: 100.00, return_amount: 180.00, odds: 180, user_id: u1.id)
b2 = Bet.create(bet: 'Thiago Silva | Anytime Goalscorer', game: 'Liverpool FC v Chelsea FC', wager: 50.00, return_amount: 350.00, odds: 700, user_id: u1.id)
b3 = Bet.create(bet: 'Manchester City to win', game: 'Manchester City v Manchester United', wager: 250.00, return_amount: 100.00, odds: -250, user_id: u1.id)
b4 = Bet.create(bet: 'Cristiano Ronaldo | Anytime Goalscorer', game: 'Manchester City v Manchester United', wager: 100.00, return_amount: 150.00, odds: 150, user_id: u2.id)
b5 = Bet.create(bet: 'Manchester United to win', game: 'Manchester City v Manchester United', wager: 200.00, return_amount: 300.00, odds: 150, user_id: u2.id)
