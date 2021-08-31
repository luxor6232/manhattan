# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user= User.new(email:"pedro99@hotmail.com", password:"123456", encrypted_password: "123456")
user.save
Service.create(title: 'imagen', content: 'caballo', price: 200)
BlogPost.create(name:"Prueba" ,content:"Probando el post", user: user)