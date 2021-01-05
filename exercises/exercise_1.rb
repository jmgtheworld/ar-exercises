require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
b = Store.new
b.name = "Burnaby"
b.annual_revenue = 300000
b.mens_apparel = true
b.womens_apparel = true
b.save

r = Store.create(name: "Richmond", annual_revenue: 1260000, mens_apparel: false, womens_apparel: true)

g = Store.create(name: "Gastown", annual_revenue: 190000, mens_apparel: true, womens_apparel: false)

puts Store.count