def fizzbuzz(n)
  if n%5 == 0 && n%3 ==0
    puts "Fizzbuzz"
  elsif n%5 == 0
    puts "Buzz"
  elsif n%3 ==0
    puts "Fizz"
  else
    n
  end
end

0.upto(1000) do |n|
  fizzbuzz (n)
end

ary = Array(1..1000)

ary.map do |n|
  fizzbuzz(n)
end

array.each do |n|
  fizzbuzz(n)
end

a = lambda do |n|
  if n%5 == 0 && n%3 == 0
     puts "FizzBuzz"
   elsif n%3 == 0
     puts "fizz"
   elsif n%5 == 0
     puts "buzz"
   else
     n
   end
 end

1.upto(100) do |n|
  a.call(n)
end

ary.map do |n|
  a.call(n)
end

ary.each do |n|
  a.call(n)
end

p = proc.new do |n|
  if n%5 == 0 && n%3 == 0
     puts "FizzBuzz"
   elsif n%3 == 0
     puts "fizz"
   elsif n%5 == 0
     puts "buzz"
   else
     n
   end
 end

 1.upto(100) do |n|
   p.call(n)
 end

 ary.map do |n|
   p.call(n)
 end

 ary.each do |n|
   a.call(n)
 end
