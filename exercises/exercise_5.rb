require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

total = Stores.sum(:annual_revenue)
average = Stores.average(:annual_revenue)

puts "total: #{total}" 
puts "average: #{average}"

puts "number of million-dollar stores:", Stores.where("annual_revenue >= ?", 1000000).size 