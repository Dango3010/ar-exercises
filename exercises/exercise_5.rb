require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total = Store.sum(:annual_revenue)
average = Store.average(:annual_revenue)

puts "total: #{total}" 
puts "average: #{average}"

puts "number of million-dollar stores:", Store.where("annual_revenue >= ?", 1000000).size 