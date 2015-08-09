print "Press Enter when you've picked your number between 1 and 100 "
gets.chomp
too_low = [0]
too_high = [101]
response = ""
count = 1
guess = nil

until response.downcase == "correct" || response.downcase == "c"
  if response.downcase == "low" || response.downcase == "l"
    too_low << guess
  elsif response.downcase == "high" || response.downcase == "h"
    too_high << guess
  end
  range = (too_low.max+1...too_high.min).to_a
  guess = range[range.count/2]
  if range == []
    puts "You're a liar. I quit"
    exit
  end
  puts "Guess #{count}: #{guess}"
  print "Too low, too high, or correct? (L/H/C) "
  count += 1
  response = gets.chomp
end
puts "Hooray! I win!"
