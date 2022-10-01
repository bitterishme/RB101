# Create a String
emptry_string = String.new

# Quote Confusion
puts "It's now 12 o'clock."

# Ignoring Case
name = 'Roger'

if name.casecmp?('RoGer')
  puts 'true'
else
  puts 'false'
end

if name.casecmp?('DAVE')
  puts 'true'
else
  puts 'false'
end

# Dynamic String
name = 'Elizabeth'
puts "Hello, #{name}!"

# Combining Names
first_name = 'John'
last_name = 'Doe'
full_name = "#{first_name} #{last_name}"
puts full_name

# Tricky Formatting
state = 'tExAs'
state.capitalize!
puts state

# Goodbye, not Hello
greeting = 'Hello!'
greeting.gsub!('Hello', 'Goodbye')
puts greeting 

# Print the Alphabet
alphabet = 'abcdefghijklmnopqrstuvwxyz'
puts alphabet.split('')

# Pluralize
words = 'car human elephant airplane'
puts words.split(' ').each {|word| word << 's'}

# Are You There?
colors = 'blue pink yellow orange'

puts colors.include?('yellow')
puts colors.include?('purple')

