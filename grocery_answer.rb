require 'csv'
require 'pry'

grocery_hash = CSV.read("grocery.csv", headers:true)

puts "=" *30
puts "welcome to the store!"
puts "=" * 30


puts "We have an assortment of things to buy:"
puts "when you are done, simply enter 'done'."

grocery_hash.each do |row|
  puts row ["item"]
  puts row ["price"]
  puts "=" * 30
end

user_input = gets.chomp.strip.downcase

@user_groceries = []
# @ is a class instance variable...
@user_groceries << user_input

if user_input != "Done"
  puts "You've added #{user_input} to your cart!"
end

while user_input != "done"
  user_input = gets.chomp.strip.downcase
  @user_groceries << user_input
  if user_input != "Done"
    puts "You've added #{user_input} to your cart!"
  end
end

if @user_groceries.include?("done")
  @user_groceries.delete("done")
end

@array_of_prices = []
@user_groceries.each do |choice|
  price = grocery_hash.select {|row| row["item"] == choice}.map {|x| x["price"]}

  if !price.nil?
    @array_of_prices << price
  end

end

puts "Here is your subtotal:"
puts @array_of_prices.flatten.map { |x| x.to_i }.inject(0, :+)
