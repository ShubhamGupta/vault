# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
AdminUser.create!(email: 'adm@vlt.com', password: '////????', password_confirmation: '////????') unless AdminUser.exists?
User.find_or_create_by(first_name: 'Shubham', last_name: 'Gupta')
User.find_or_create_by(first_name: 'Sawan', last_name: 'Gupta')
