# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create(name: 'Coffee')
Product.create(name: 'Coffee Milk', price: 15000.0)
Product.create(name: 'Coffee Black', price: 15000.0, image: 'logo.jpg')
Product.create(name: 'Coffee1', price: 15000.0, image: 'logo.jpg')
Product.create(name: 'Coffee2', price: 15000.0, image: 'logo.jpg')
Product.create(name: 'Coffee3', price: 15000.0, image: 'logo.jpg')
