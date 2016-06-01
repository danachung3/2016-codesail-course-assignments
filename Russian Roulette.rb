puts "Hi user, you are currently playing against a computer.
There are six barrals to a gun with one live bullet.
The barrel with the live bullet is selected at random.
Either enter Pass (p) or Choose (c) to shoot the gun."
user_input = gets.downcase.strip.chomp


live_bullet_barrel = rand(1..6)
computer_input = rand(1..6)

if user_input == "c"
  puts "Please enter a number from 1-6"
user_input2 = gets.downcase.strip.chomp.to_i
  if user_input2 >= live_bullet_barrel
    puts "You're now Dead, YOU LOST"
  else
    puts "YOU WON!! You're opponent is dead."
  end
elsif user_input == "p"
  if computer_input >= live_bullet_barrel
    puts "Your opponent is dead. Congrats you Won!!"
  else
    puts "Your opponent won. You lost (and now are dead)"
  end
end
