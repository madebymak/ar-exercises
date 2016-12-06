require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...
# Borrowing and modifying the code from Exercise one, create 3 more stores:
# Surrey (annual_revenue of 224 000, carries women's apparel only)
# Whistler (annual_revenue of 1 900 000 carries men's apparel only)
# Yaletown (annual_revenue of 430 000 carries men's and women's apparel)
# Using the where class method from Active Record, fetch (a collection of) only those stores that carry men's apparel. Assign the results to a variable @mens_stores.
# Loop through each of these stores and output their name and annual revenue on each line.
# Do another fetch but this time load stores that carry women's apparel and are generating less than $1M in annual revenue.

surrey = Store.create(name: "Surrey",
                        annual_revenue: 224000,
                        mens_apparel: false,
                        womens_apparel: true)

whistler = Store.create(name: "Whistler",
                        annual_revenue: 1900000,
                        mens_apparel: true,
                        womens_apparel: false)

yaletown = Store.create(name: "Yaletown",
                        annual_revenue: 430000,
                        mens_apparel: true,
                        womens_apparel: true)

# @mens_stores = Store.where(mens_apparel: "true")
#
# @mens_stores.each do |key, value|
#   puts key.name
#   puts key.annual_revenue
# end

@womens_stores = Store.where("womens_apparel = ? AND annual_revenue < ?", true, 1000000)

# puts @women_store

@womens_stores.each do |key, value|
  puts key.name
  puts key.annual_revenue
end
