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

b1 = Bet.create(bet: 'Manchester United Moneyline', game: 'Manchester United v Brentford', wager: 100.00, return_amount: 180.00, odds: 1.80, status: "pending", user_id: u1.id)
b2 = Bet.create(bet: 'Chelsea Moneyline', game: 'Liverpool v Chelsea', wager: 50.00, return_amount: 350.00, odds: 7.00, status: "pending", user_id: u1.id)
b3 = Bet.create(bet: 'Manchester City Moneyline', game: 'Manchester City v Manchester United', wager: 250.00, return_amount: 100.00, odds: 2.50, status: "pending", user_id: u1.id)
b4 = Bet.create(bet: 'Southampton Moneyline', game: 'Brentford v Southampton', wager: 100.00, return_amount: 150.00, odds: 1.50, status: "pending", user_id: u2.id)
b5 = Bet.create(bet: 'Burnley Moneyline', game: 'Burnley v Aston Villa', wager: 200.00, return_amount: 300.00, odds: 1.50, status: "pending", user_id: u2.id)
