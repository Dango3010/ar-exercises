require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

class Store < ActiveRecord::Base
  has_many :employees

  validate :name_length
  validate :revenue_not_zero
  # validate :apparel_presence

  def name_length
    errors.add(:name, 'must have a minimum of 3 characters') if name.length < 3 
  end

  def revenue_not_zero 
    errors.add(:annual_revenue, 'must be greater than 0') if annual_revenue < 0
  end

  # def apparel_presence
  #   if !mens_apparel && !womens_apparel
  #     errors.add(:apparel, "must carry either men's or women's apparel") 
  #   end
  # end

end

class Employee < ActiveRecord::Base
  belongs_to :store

  validate :everything

  def everything
    First_name 
    Last_name
    hour_rate
    storesId
  end 

  def First_name 
    if first_name.blank?
      errors.add(:first_name, "must present")
    end
  end

  def Last_name
    if last_name.blank?
      errors.add(:last_name, "must present")
    end
  end

  def hour_rate
    #if the hourly_rate is not b/t 40 and 200, !(40..200).include?(hourly_rate) will return true
    errors.add(:hour_rate, 'must be between 40 and 200') if !(40..200).include?(hourly_rate)
  end

  def storesId
    errors.add(:store_id, 'must belong to a store') if store_id.blank?
  end

end

puts "what store u'd like to register?"
print "> "
Sto_name = $stdin.gets.chomp
Store.create(name: Sto_name, annual_revenue: -333)

