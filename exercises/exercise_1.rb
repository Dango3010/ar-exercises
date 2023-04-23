require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Stores < ActiveRecord::Base 
end

Stores.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: 'yes', womens_apparel: 'yes')
Stores.create(name: 'Richmond', annual_revenue: 1260000, womens_apparel: 'true')
Stores.create(name: 'Gastown',annual_revenue: 190000, mens_apparel: 'true')
puts Stores.count
