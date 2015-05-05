secret_number = rand(1..100)
print "Guess a number between 1 and 100: "
guess = gets.chomp.to_i

  if guess == secret_number
    puts "Correct! The number was #{secret_number}!"
  else
    while guess != secret_number
      if guess > secret_number
        puts "Too high! Try again: "
        guess = gets.chomp.to_i
      else
        puts "Too low! Try again: "
        guess = gets.chomp.to_i
      end
    end
    puts "Correct! The number was #{secret_number}!"
  end
