# 1. Easy Looping
# Use a times loop to generate this output:
# Line
# Line
# Line
# Line
# Line

5.times do
  puts "Line"
end

# 2. Looping with a Condition
# Build on your answer from the problem above and add an if/else to generate output like this:
# Line is even
# Line is odd
# Line is even
# Line is odd
# Line is even

5.times do |num|
  if num.odd?
    puts "Line is odd"
  else
    puts "line is even"
  end
end

# 3. Three Loops
# Generate the output below using three totally separate implementations (times, while and loop):
# This is my output line 1
# This is my output line 2
# This is my output line 3
# This is my output line 4
# This is my output line 5

5.times do |num|
  puts "This is my output line #{num + 1}"
end

num = 0
while num < 5 do
  puts "This is my output line #{num + 1}"
  num+=1
end

num = 0
loop do
  num += 1
  puts "This is my output line #{num}"
  if num > 4
    break
  end
end

# Write two implementations, one with while and one with loop that output the following:
# (The secret number is 8)
# Guess is 4
# Guess again!
# Guess is 5
# Guess again!
# Guess is 9
# Guess again!
# Guess is 4
# Guess again!
# Guess is 8
# You win!

def initialize(rand_num, guess)
  @rand_num = rand_num
  @guess = guess
end

def guessing_game
@rand_num = 1 + rand(10)
puts "(The secret number is #{@rand_num})"
@guess = 1 + rand(10)
puts "guess is #{@guess}"
if @rand_num == @guess
  puts "You win!"
else puts "guess again"
end
end

loop do
  guessing_game
  if @rand_num == @guess
    break
end
end
