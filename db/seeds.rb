# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(first_name: "Balabhadra", last_name: "Chand", email: "sanu@gmail.com", phone_number: "7008549099", password: "123456")

Department.create!(name: "Developers", location: "Remote")
Department.create!(name: "Quality Analyists", location: "Remote")

Employee.create!(name: "Balabhadra Chand", email: "sanu3x@gmail.com", department_id: 1)
Employee.create!(name: "Sanu Chand", email: "sanu5x@gmail.com", department_id: 1)

Project.create!(title: "Invoice", start_date: Date.today, end_date: Date.today + rand(1..15))
