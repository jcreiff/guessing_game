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
print "You have 5 chances to guess a number between 1 and 100: "
guess = gets.chomp.to_i
guess_count = 1

while guess != secret_number
  check_number(guess, secret_number)
  guess = gets.chomp.to_i
  guess_count += 1
  break if guess_count == 5
end

if guess == secret_number
  puts "Correct! The number was #{secret_number}!"
else
  puts "Too late! The number was #{secret_number}!"
end
