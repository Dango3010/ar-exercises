require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require 'pp'

puts "Exercise 4"
puts "----------"

Store.create(name: 'Surrey', annual_revenue: 224000, womens_apparel: 'true')
Store.create(name: 'whistler', annual_revenue: 1900000, mens_apparel: 'true')
Store.create(name: 'yaletown', annual_revenue: 430000, mens_apparel: 'true', womens_apparel: 'true')

@mens_stores = Store.where(mens_apparel: 'true')
puts @mens_stores.count 

@mens_stores.each do |store|
  pp store.name, store.annual_revenue
end

@womens_stores = Store.where("annual_revenue < ? AND womens_apparel = ?", 1000000, 'true')
puts @womens_stores.count

@womens_stores.each do |store|
  pp store.name, store.annual_revenue
end


