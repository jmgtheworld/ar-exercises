require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
# require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
puts "Please enter a store name"
print "> "
answer = gets.chomp
store = Store.create(name: answer, annual_revenue: 660000)

if !store.valid?
  puts store.errors.full_messages
end




