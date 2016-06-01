def beer(n)
  n-1
end

99.downto(0) do |n|

if n >= 3
  puts n.to_s + " bottles of beer on the wall," + n.to_s + " bottles of beer."
  puts "Take one down and pass it around, " + beer(n).to_s + " bottles of beer on the wall."
elsif n == 2
  puts n.to_s + " bottles of beer on the wall," + n.to_s + " bottles of beer."
  puts "Take one down and pass it around, " + beer(n).to_s + " bottle of beer on the wall."
elsif n == 1
  puts n.to_s + " bottle of beer on the wall," + n.to_s + "bottle of beer."
  puts "Take one down and pass it around, no more bottles of of beer on the wall."
elsif n == 0
  puts "No bottles of beer on the wall, no more bottles of beer."
  puts "Go to the store andbuy some more, 99 bottles of beer on the wall."
end 
end
