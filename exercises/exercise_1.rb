require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Stores < ActiveRecord::Base 
end

Burnaby = Stores.create(annual_revenue: 300000, mens_apparel: 'yes', womens_apparel: 'yes')
Richmond = Stores.create(annual_revenue: 1260000, womens_apparel: 'true')
Gastown = Stores.create(annual_revenue: 190000, mens_apparel: 'true')
puts Stores.count
