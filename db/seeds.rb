# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Tufoin = User.create!(name: 'Tufoin')
Tolu = User.create!(name: 'Tolu')

buying = Tufoin.groups.create!(name: 'usa mall', icon: 'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fGZhY2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')
selling = Tolu.groups.create!(name: 'wall street', icon: 'https://images.unsplash.com/photo-1590038767624-dac5740a997b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGZhY2VzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60')

operation = Tufoin.operations.create!(name: 'McDonalds and sons', amount: 3452.79)
operation2 = Tolu.operations.create!(name: 'Bodyshop_cream', amount: 4855.79)

# inside_transaction = GroupOperation.create!(group: buying, operation: operation)
# inside_transaction2 = GroupOperation.create!(group: selling, operation: operation2)

GroupOperation.create!(group: buying, operation: operation)
GroupOperation.create!(group: selling, operation: operation2)