def check_number(guess, secret_number, guess_count)
  if guess == secret_number
    puts "Correct! The number was #{secret_number}!"
  elsif guess > secret_number && guess_count != 5
    print "Too high! Try again: "
  elsif guess < secret_number && guess_count != 5
    print "Too low! Try again: "
  else
  end
end

def check_array(guess_array, guess)
  if guess_array.include?(guess)
    print "Steve Perry would appreciate that you don't stop believing, but that's still not correct. "
  else
    guess_array<<guess
  end
end

secret_number = rand(1..100)
puts secret_number
print "You have 5 chances to guess a number between 1 and 100: "
guess = ""
guess_count = 0
guess_array = []

while guess != secret_number
  guess = gets.chomp.to_i
  guess_count += 1
  check_array(guess_array, guess)
  check_number(guess, secret_number, guess_count)
  break if guess_count == 5
end

if guess != secret_number
  puts "Too late! The number was #{secret_number}!"
end
