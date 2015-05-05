def check_number(guess, secret_number)
  if guess == secret_number
    puts "Correct! The number was #{secret_number}!"
  elsif guess > secret_number
    print "Too high! Try again: "
  else
    print "Too low! Try again: "
  end
end

secret_number = rand(1..100)
print "Guess a number between 1 and 100: "
guess = gets.chomp.to_i

while guess != secret_number
  check_number(guess, secret_number)
  guess = gets.chomp.to_i
end
puts "Correct! The number was #{secret_number}!"
