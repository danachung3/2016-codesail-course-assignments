def output_border
  puts "*" * 20
  puts " "
end

output_border
puts "Hello user, you are about to go on an adventure!"
output_border

puts "Please enter your username!"
username = gets.chomp.strip

output_border
puts "Hi, #{username}"
output_border

puts "Choose a destination for your adventure: the beach (b), home (h), or the unknown(u)."

user_decision = gets.chomp.strip.downcase

output_border
if user_decision == "b"
  puts "In order to arrive at the beach, you have to correctly answer the following question:"
  puts "True (t) or false (f): The white sandy beaches of tropical islands are made up of fish poop. A single fish poops out ~ 200 lbs of sand per year."
  user_answer1 = gets.chomp.strip.downcase
  if user_answer1 == "t"
    puts "You're wrong! Why would sand be made of fish poop?"
  else user_answer1 == "f"
    puts "True, What are beaches actually made of?"
    user_answer2 = gets.chomp.strip.downcase
    if user_answer1 == "rocks"
      puts "True!!! You make it to the beach :)"
    else
      puts "Wrong. You almost make it to the beach, but unfortunately, you do not make it :("
    end
  end
elsif user_decision == "h"
  puts "Where is your home: Northeast, Midwest, South, West or Other?"
  user_answer2 = gets.chomp.strip.downcase
  if user_answer2 == "northeast"
    puts "In order to get home, answer the following question correctly: What is the biggest state in the Northeast?"
    user_answer4 = gets.chomp.strip.downcase
    if user_answer4 == "maine"
      puts "Correct! you know enough about your homearea, you get to go home!"
    else
      puts "WRONG. YOU CAN'T GO HOME"
    end
  elsif user_answer2 == "midwest"
    puts "In order to get home, answer the following question correctly: What is the smallest state in the Midwest?"
    user_answer5 = gets.chomp.strip.downcase
    if user_answer5 == "indiana"
      puts "Correct! you know enough about your homearea, you get to go home!"
    else
      puts "WRONG. YOU CAN'T GO HOME"
    end
  elsif user_answer2 == "south"
    puts "Is texas the largest state in the US? Y or N?"
    user_answer6 = gets.chomp.strip.downcase
    if user_answer6 == "y"
      puts "WRONG. You don't know enough about the US, you can't go home."
    else
      puts "Correct! You know enough about your homearea, you can go home!"
    end
  elsif user_answer2 == "west"
    puts "Which is the best coast? East or West"
    user_answer7 = gets.chomp.strip.downcase
    if user_answer7 == "west"
      puts "WRONG HAHA, you can't go home"
    else
      puts "Right! East coast is the best, since you know that, you can go home!"
    end
  else
    puts "You obviously don't live in the continential USA. Please play another game"
  end
else
  puts "Since you did not choose a destination for your adventure, you will now have to solve this riddle. The correct answer will transport you to a mysterious destination:"
  puts "What is this cipher trying to say: Cog Din si nfu"
  user_final = gets.chomp.strip.downcase
  if user_final == "coding is fun"
    puts "CONGRATS YOU MADE IT TO PARADISE"
  else
    puts "close, next time you should actually choose a destination. Try again next time."
  end 
end
