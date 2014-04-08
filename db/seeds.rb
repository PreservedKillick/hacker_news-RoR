# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = User.create([{ name: 'Angela' }, { name: 'Manuel' }, { name: 'Balu' }, { name: 'Cinderella' }, { name: 'Jasmine' }])
posts = Post.create([{ title: 'Sample Post 1', content: 'STUFF..', user_id: 2 }, { title: 'Sample Post 2', content: 'STUFF..', user_id: 2}, { title: 'Sample Post 3', content: 'STUFF..', user_id: 3}, { title: 'Sample Post 4', content: 'STUFF..', user_id: 4}, { title: 'Sample Post 5', content: 'STUFF..', user_id: 4}])
