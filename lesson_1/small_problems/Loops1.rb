# Say Hello
say_hello = true
count = 0

while say_hello
  puts 'Hello!'
  count += 1
  say_hello = false if count == 5
end

# Print While
numbers = []
 while numbers.length < 5
  numbers << rand(100)
 end

puts numbers

# Count Up
count = 1

until count > 10
  puts count
  count += 1
end

# Print Until
numbers = [7, 9, 13, 25, 18]
count = 0

until count == numbers.size
  puts numbers[count]
  count += 1
end

# That's Odd
for i in 1..100
  puts i if i.odd?
end

# Greet Your Friends
friends = ['Sarah', 'John', 'Hannah', 'Dave']

for name in friends
  puts "Hello, #{name}!"
  
end
