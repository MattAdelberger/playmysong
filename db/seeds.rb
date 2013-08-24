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
  {title: 'Hey you Jack', artist: 'Jack', votes: 0, user_id: User.first.id},
  {title: 'Hey you Jill', artist: 'Jill', votes: 0, user_id: User.first.id},
  {title: 'Hey you Matt', artist: 'Matt', votes: 0, user_id: User.first.id},
  {title: 'Hey you Kelvin', artist: 'Kelvin', votes: 0, user_id: User.first.id},
  {title: 'Hey you Noah', artist: 'Noah', votes: 0, user_id: User.first.id},
  {title: 'Hey you Eilah', artist: 'Eilah', votes: 0, user_id: User.first.id},
  {title: 'Hey you Blake', artist: 'Blake', votes: 0, user_id: User.first.id},
  {title: 'Hey you Kate', artist: 'Kate', votes: 0, user_id: User.last.id},
  {title: 'Hey you John', artist: 'John', votes: 0, user_id: User.last.id},
  {title: 'Hey you Bob Smith', artist: 'Bob Smith', votes: 0, user_id: User.last.id}
]

Song.delete_all

songs.each do |song|
  Song.create(song)
end


