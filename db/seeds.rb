# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

division_list = [
  "Human Resource",
  "Information Technology",
  "Research",
  "Sales",
  "Marketing",
  "Administration"
]

division_list.each do |name|
  Division.create(name: name)
end

# You need division_id in order to create employee list based on schema.
# You should check the division_id number with the id of employee_list.

employee_list = [
   ["Tae", 26],
   ["Alex", 27],
   ["Garland", 28],
   ["Ben", 29],
   ["Josh", 30],
   ["Daniel", 31],
   ["Jake", 26],
   ["Jess", 27],
   ["Nick", 28],
   ["Mike", 29],
   ["Hugh", 30],
   ["Lake", 31]
]

employee_list.each do |name, division_id|
  # binding.pry
  Employee.create(name: name, division_id: division_id)
end

project_list = [
   "Build Website",
   "Make TV Ad",
   "Hire New Programmer",
   "Plan Party",
   "Sales Promotion"
]

project_list.each do |name|
  Project.create(name: name)
end
