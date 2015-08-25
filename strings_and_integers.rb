# 1. First & Last

# If you have the strings "First" and "Last" in the following variables:
#
# f = "First"
# l = "Last"
# Use only the "string concatenation" technique to complete the following:
#
# A. What code can you write to output the string "FirstLast"? B. What code can you write to output the string "LastFirst"? C. What code can you write to output the string "First Last"? D. What code can you write to output the string "Last First Last First"? E. What code can you write to output the string "FirstLast"?
#
# Then repeat A-E using only the "string interpolation" technique.
f = "First"
l = "Last"
puts f + l
puts l + f
puts f + " " + l
puts l + " " + f + " " + l + " " + f + " "
puts f + l

puts "#{f}#{l}"
puts "#{l}#{f}"
puts "#{f} #{l}"
puts "#{l} #{f} #{l} #{f}"
puts "#{f}#{l}"

# 2. Names
#
# Start with this string:
#
# name_1 = "Megan Smith"
# name_2 = "Todd Park"
# A. Can you come up with two ways to output just the fragment "Megan" from name_1? B. Would either of your techniques from A would work to output "Todd" from name_2? Why or why not? C. Write code that can output the initials of name_2.
name_1 = "Megan Smith"
name_2 = "Todd Park"

puts "#{name_1.slice(0..4)}"
puts name_1[0..4]

# #technically, this will work for name_2, but it will include the space

puts "#{name_2.slice(0..4)}"

puts name_2[0..4]
initials =name_2[0] + name_2[5]
puts initials

# Just Integers
# Start with these numbers:
a = 12
b = 65
c = 31
d = 98
# A. Write code to find the average of these four numbers. B. Find the average yourself using paper or a calculator. Is your answer different than you found in A? Why? C. Say you have the operation a + b * c / d. What result do you get out from Ruby? What other outputs can you get out by adding one or more pairs of parentheses to the equation?

average = ((Float (a)) + (Float (b)) + (Float (c)) + (Float (d)))/4
puts average

result = a + b * c / d
puts result

result1 = (a + b * c) / d
puts result1

result2 = a + b * (c / d)
puts result2

# Say we have these people:
# Write code to output both the total characters in all the names together and the average length of the names.

a = "Ezra"
b = "Ada"
c = "Yukihiro"
d = "Grace"

name_length_av = ((Float (a.length)) + (Float (b.length)) + (Float (c.length)) + (Float (d.length)))/4
puts name_length_av

# Happy Birthday
# In our family we like to say "Happy" once for every year of your age when we say "Happy birthday!". So when you #turn four we'd say "Happy happy happy happy birthday!" Note the capitalization.
# Say you have an age variable that holds the person's age. Write code to output the appropriate greeting.
age_a = 5
age_b = 4
age_c = 6
age_d = 10

happies = "happy "*(age_c - 1)
puts "Happy #{happies} birthday!"

# String Compression
# There's a silly compression algorithm that outputs the first letter, the number of letters in the middle, and the last letter. So for the string "Kalamazoo" it'd output "K7o" or "Denver" would be "D4r". Can you write code to implement that?

string = "Kalamazoo"
puts "#{string[0]}#{string.length-2}#{string[1]}"
