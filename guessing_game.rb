def check_number(guess, secret_number)
  if guess == secret_number
    puts "Correct! The number was #{secret_number}!"
  elsif guess > secret_number
    print "Too high! Try again: "
  else
    print "Too low! Try again: "
  end
end

def check_array(guess_array, guess)
  if guess_array.include?(guess)
    print "Steve Perry would appreciate that you don't stop believing, but still: "
  else
    guess_array<<guess
  end
end

secret_number = rand(1..100)
print "You have 5 chances to guess a number between 1 and 100: "
guess = ""
guess_count = 0
guess_array = []

while guess != secret_number
  guess = gets.chomp.to_i
  check_array(guess_array, guess)
  check_number(guess, secret_number)
  guess_count += 1
  break if guess_count == 5
end

if guess != secret_number
  puts "Too late! The number was #{secret_number}!"
end
