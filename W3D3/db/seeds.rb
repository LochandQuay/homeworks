# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hope = Person.create(name: 'Hope', house_id: 2)
rich = Person.create(name: 'Rich', house_id: 3)
emily = Person.create(name: 'Emily', house_id: 1)
forrest = Person.create(name: 'Forrest', house_id: 1)

texas_four = House.create(address: '251 Texas St, Apt 4')
texas_five = House.create(address: '251 Texas St, Apt 5')
ross = House.create(address: '3893 Ross Rd')
