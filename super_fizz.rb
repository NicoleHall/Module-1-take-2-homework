count = 0
1000.times do
  count += 1
  if (count % 3 == 0 && count % 7 == 0) && count % 5 == 0
    puts "SuperFizzBuzz"
  elsif count % 3 == 0 && count % 7 == 0
    puts "SuperFizz"
  elsif count % 5 == 0 && count % 7 == 0
    puts "SuperBuzz"
  elsif count % 3 == 0
    puts "Fizz"
  elsif count % 5 == 0
    puts "Buzz"
  elsif count % 7 == 0
    puts "Super"
  else
    puts count
  end
end
