require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Stores.where(id: 1).first 
puts @store1
@store2 = Stores.where(id: 2).first
puts @store2

@store1.update(name: 'Dango')