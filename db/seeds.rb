# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Recluta administrador
Recruit.create({email:"admin@mail.com", name: "José Luis", lastname: "Eguia Tellez", password: "qwerty", password_confirmation: "qwerty", phone: "#12345678", key: "ADMIN123", is_admin: true})

# Usuarios de prueba
User.create({email:"prueba1@mail.com", name: "Usuario", lastname: "1", password: "qwerty", password_confirmation: "qwerty"})
User.create({email:"prueba2@mail.com", name: "Usuario", lastname: "2", password: "qwerty", password_confirmation: "qwerty"})
User.create({email:"prueba3@mail.com", name: "Usuario", lastname: "3", password: "qwerty", password_confirmation: "qwerty"})
User.create({email:"prueba4@mail.com", name: "Usuario", lastname: "4", password: "qwerty", password_confirmation: "qwerty"})
User.create({email:"prueba5@mail.com", name: "Usuario", lastname: "5", password: "qwerty", password_confirmation: "qwerty"})
User.create({email:"prueba6@mail.com", name: "Usuario", lastname: "6", password: "qwerty", password_confirmation: "qwerty"})
User.create({email:"prueba7@mail.com", name: "Usuario", lastname: "7", password: "qwerty", password_confirmation: "qwerty"})
User.create({email:"prueba8@mail.com", name: "Usuario", lastname: "8", password: "qwerty", password_confirmation: "qwerty"})
User.create({email:"prueba9@mail.com", name: "Usuario", lastname: "9", password: "qwerty", password_confirmation: "qwerty"})
User.create({email:"prueba10@mail.com", name: "Usuario", lastname: "10", password: "qwerty", password_confirmation: "qwerty"})
