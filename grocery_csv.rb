require 'pry'
require 'csv'
def output_border
  puts "*" * 20
  puts " "
end

csv = CSV.read("grocery.csv", headers:true)

output_border
puts "Welcome to the Grocery Store!"
output_border

puts "Please list which items you would like to purchase. If you would like to purchase multiple quantities of a certain item, please list it multiple times. Please enter 'stop' when you finish listing the items you want. Users can purchase a maximum of 5 items"
puts "These are the available items and how much they cost: "
puts csv
output_border
# puts "this is how much they cost: "
# puts csv["price"]

@list = []

while !@list.include?("stop")
    user_input = gets.chomp.strip.downcase
    @list << user_input
end

@price = []

csv.each do |row|
  @list.each do |item|
    if row["item"] == item
      puts a = row["price"]
      @price << a
    end
  end
end

output_border

puts "Here are the things you ordered and their prices, respectively:"
puts @list
puts @price
puts "and Here is your subtotal:"
puts total = @price[0].to_i + @price[1].to_i + @price[2].to_i + @price[3].to_i + @price[4].to_i

output_border
puts "You owe:"
puts total
puts "dollars"
puts "Thank you for shopping with us! Come again soon!"
