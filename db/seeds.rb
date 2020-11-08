# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do |worker|
  User.create!(first_name: 'test', last_name: "user #{worker}", email: "testworker#{worker}@test.com", password: "password", password_confirmation: "password", worker_id: "xyz2020")
end

1.times do |manager|
  ManagerUser.create!(first_name: 'test', last_name: "user #{manager}", email: "testmananger#{manager}@test.com", password: "password", password_confirmation: "password", worker_id: "xyz2021")
end

10.times do |request|
  Request.create!(status: 'pending', vacation_start_date: Date.tomorrow, vacation_end_date: Date.tomorrow + 5.days, author: "#{User.first.first_name}  #{User.first.last_name}", user_id: 1)
end