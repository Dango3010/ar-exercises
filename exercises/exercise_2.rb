require_relative '../setup'
require_relative './exercise_1'

puts "Exercise 2"
puts "----------"

@store1 = Store.where(id: 1).first 
puts @store1
@store2 = Store.where(id: 2).first
puts @store2

@store1.update(name: 'Dango')