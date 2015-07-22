# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u = User.all
u.each  do |x|
  x.destroy
end
User.create(email:'marcoaacoliveira@gmail.com', password:'123456', password_confirmation: '123456', name:'Marco Oliveira', admin: true)
User.create(email:'coach@gmail.com', password:'123456', password_confirmation: '123456', name:'Coach', admin: false)
