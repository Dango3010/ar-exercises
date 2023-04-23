require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Yellow", last_name: "Rainbow", hourly_rate: 100)
@store1.employees.create(first_name: "Red", last_name: "Rainbow", hourly_rate: 30)

@store2.employees.create(first_name: "Heo", last_name: "Map", hourly_rate: 40)
@store2.employees.create(first_name: "Heo2", last_name: "Map2", hourly_rate: 110)
@store2.employees.create(first_name: "Heo3", last_name: "Map3", hourly_rate: 200)



