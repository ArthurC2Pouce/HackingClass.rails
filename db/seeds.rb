require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.destroy_all
Course.destroy_all


10.times do
	student = Student.create!(name: Faker::GameOfThrones.character , email: Faker::Internet.email)
end


250.times do
	course = Course.create!(title: Faker::Pokemon.name, content: Faker::HowIMetYourMother.quote, student: Student.all.sample)
end