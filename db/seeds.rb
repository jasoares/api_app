# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

matz = Owner.create(owner_name: 'matz')
yukihiro = Owner.create(owner_name: 'yukihiro')

Article.create(
  owner: matz,
  name: 'iPhone 12SC Plus',
  price: 42000,
  description: 'this is a revolution'
)

Article.create(
  owner: yukihiro,
  name: 'The Ruby Programming Language - O\'Reilly Media',
  price: 18.50,
  description: 'The Ruby Programming Language is the authoritative guide to Ruby'
)

Article.create(
  owner: matz,
  name: 'Airpods',
  price: 169.90,
  description: 'Apple wireless headphones'
)
