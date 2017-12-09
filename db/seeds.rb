# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Citizen.destroy_all
City.destroy_all

amsterdam = City.create! ({name: "Amsterdam"})
utrecht = City.create! ({name: "Utrecht"})

citizen1 = Citizen.create!( { name: 'Dejan', age: 45, occupation: 'Aspiring developer', city: amsterdam } )
citizen2 = Citizen.create!( { name: 'Fandy', age: 32, occupation: 'A future mom', city: amsterdam } )
citizen3 = Citizen.create!( { name: 'Iskander', age: 25, occupation: 'Almost professional terminal typer', city: utrecht } )
citizen4 = Citizen.create!( { name: 'Mohammed', age: 31, occupation: 'Aspiring junior developer', city: utrecht } )
#
