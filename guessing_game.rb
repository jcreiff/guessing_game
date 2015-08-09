def check_junk(guess)
junk = true
  while junk == true
    if (guess.to_i.to_s != guess) && (guess.to_f.to_s != guess)
      print "#{guess} is definitely not a number, so that guess doesn't count. Try again: "
      guess = gets.chomp
    elsif (guess.to_f.to_s == guess)
      print "Decimals? I'm not that evil. That guess doesn't count. Try again: "
      guess = gets.chomp
    elsif guess.to_i > 100 || guess.to_i < 1
      print "That guess doesn't count--this time make sure the number is between 1 and 100: "
      guess = gets.chomp
    else
      junk = false
      return guess
    end
  end
end

def check_number(guess, secret_number, guess_count)
  if guess == secret_number
    puts "Correct! The number was #{secret_number}!"
  elsif guess > secret_number && guess_count != 5
    print "Too high! Try again: "
  elsif guess < secret_number && guess_count != 5
    print "Too low! Try again: "
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
print "You have 5 chances to guess a number between 1 and 100: "
guess = ""
guess_count = 0
guess_array = []

while guess != secret_number
  guess = gets.chomp
  guess = check_junk(guess).to_i
  guess_count += 1
  check_array(guess_array, guess)
  check_number(guess, secret_number, guess_count)
  break if guess_count == 5
end

if guess != secret_number
  puts "Too late! The number was #{secret_number}!"
end
