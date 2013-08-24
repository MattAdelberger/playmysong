# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

users = [
  {email: 'test@test.com', password: 'password', artist: 'Cowboy Jukebox'},
  {email: 'test2@test.com', password: 'password', artist: 'Crazy Monkies'}
]

User.delete_all

users.each do |user|
  User.create(user)
end


songs = [
  {title: 'Hey you Jack', artist: 'Jack', user_id: User.first.id},
  {title: 'Hey you Jill', artist: 'Jill', user_id: User.first.id},
  {title: 'Hey you Matt', artist: 'Matt', user_id: User.first.id},
  {title: 'Hey you Kelvin', artist: 'Kelvin', user_id: User.first.id},
  {title: 'Hey you Noah', artist: 'Noah', user_id: User.first.id},
  {title: 'Hey you Eilah', artist: 'Eilah', user_id: User.first.id},
  {title: 'Hey you Blake', artist: 'Blake', user_id: User.first.id},
  {title: 'Hey you Kate', artist: 'Kate', user_id: User.last.id},
  {title: 'Hey you John', artist: 'John', user_id: User.last.id},
  {title: 'Hey you Bob Smith', artist: 'Bob Smith', user_id: User.last.id}
]

Song.delete_all

songs.each do |song|
  Song.create(song)
end


