require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...

class Employee 
  validates :first_name, :last_name, :hourly_rate, presence: true
  belongs_to :store
  validates :hourly_rate, numericality: { greater_than_or_equal_to: 40 }
  validates :hourly_rate, numericality: { less_than_or_equal_to: 200 }
end

class Store
  validates :name, :annual_revenue, presence: true
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}

end

# puts @store1.employees.create(first_name: "todd").valid?

puts "Enter a store name"
@user_store = gets.chomp

@new_store = Store.create(name: @user_store)
puts @new_store.errors.messages