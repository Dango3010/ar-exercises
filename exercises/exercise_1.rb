require_relative '../setup'

puts "Exercise 1"
puts "----------"

class Store < ActiveRecord::Base 
  has_many :employees
end

Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: 'yes', womens_apparel: 'yes')
Store.create(name: 'Richmond', annual_revenue: 1260000, womens_apparel: 'true')
Store.create(name: 'Gastown',annual_revenue: 190000, mens_apparel: 'true')
puts Store.count
