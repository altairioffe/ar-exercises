require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Francesco", last_name: "LaCroque", hourly_rate: 70)
@store1.employees.create(first_name: "Jamingus", last_name: "Tostada", hourly_rate: 50)
@store2.employees.create(first_name: "Sarah", last_name: "Nrap", hourly_rate: 150)
@store2.employees.create(first_name: "Bella", last_name: "Bobella", hourly_rate: 45)
@store2.employees.create(first_name: "Gordon", last_name: "Ramsay", hourly_rate: 180)

puts Employee.count