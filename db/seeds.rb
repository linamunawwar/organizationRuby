# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name: 'Lina', phone: '08368493', email: 'user1@gmail.com',password: '123456', role_id: 1)
User.create(name: 'user 2', phone: '00000', email: 'user2@gmail.com',password: '123456', role_id: 2)
User.create(name: 'user 3', phone: '1111', email: 'user3@gmail.com',password: '123456', role_id: 3)
User.create(name: 'user 4', phone: '22222', email: 'user4@gmail.com',password: '123456', role_id: 3)
User.create(name: 'user 5', phone: '44444', email: 'user5@gmail.com',password: '123456', role_id: 3)
Role.create(name: 'Admin Sistem', description: 'admin sistem')
Role.create(name: 'Account Manager', description: 'Account Manager')
Role.create(name: 'User', description: 'User')
