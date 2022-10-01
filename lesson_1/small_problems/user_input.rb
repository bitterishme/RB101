# Repeat after me
puts ">> Type anything you want: "
input = gets.chomp
puts input

# Your Age in Months
puts ">> What is your age in years? "
age = gets.chomp.to_i
age_in_mos = age * 12
puts "You are #{age_in_mos} months old."

# Print Something (Part 1)
puts ">> Do you want me to print something? (y/n)"
answer = gets.chomp
puts 'something' if answer == 'y'

# Print Something (Part 2)
choice = nil
loop do
  puts '>> Do you want me to print something? (y/n)'
  choice = gets.chomp.downcase
  break if %w(y n).include?(choice)
  puts '>> Invalid input! Please enter y or n'
end
puts 'something' if choice == 'y'

# Launch School Printer (Part 1)
lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3: '
  lines = gets.to_i
  break if lines >= 3
  puts ">> That's not enough lines."
  end

  while lines > 0
    puts 'Launch School is the best!'
    lines -= 1
  end

# Passwords
password = 'SecreT'
loop do
  puts '>> Please enter your password: '
  input = gets.chomp
  break if input == password
  puts '>> Invalid password!'
end
  
puts "Welcome!"

# User Name and Password
USERNAME = 'admin'
PASSWORD = 'SecreT'

loop do
  puts '>> Please enter user name: '
  user_name_attempt = gets.chomp

  puts '>> Please enter your password: '
  password_attempt = gets.chomp

  break if (user_name_attempt == USERNAME) && (password_attempt == PASSWORD)
  puts '>> Authorization fialed'
end

puts "Welcome!"

# Dividing Numbers
def valid_number?(number_string)
  number_string.to_i.to_s == number_string
end

numerator = nil

loop do
  puts ">> Please enter a numerator: "
  numerator = gets.chomp

  break if valid_number?(numerator)
  puts ">> Invalid input. Only integers are allowed."
end


denominator = nil

loop do
  puts ">> Please enter a denominator: "
  denominator = gets.chomp 


  if denominator == '0'
    puts "Invalid input. A denominator of 0 is not allowed."
  else
    break if valid_number?(denominator) 
    puts "Invalid input. Only integers are allowed."
  end
end

division = (numerator.to_i) / (denominator.to_i)
p "#{numerator} / #{denominator} is #{division}"

# Launch School Printer (Part 2)
number_of_lines = nil
loop do
  puts '>> How many output lines do you want? Enter a number >= 3:'
  number_of_lines = gets.to_i
  break if number_of_lines >= 3
  puts ">> That's not enough lines."
end

while number_of_lines > 0
  puts 'Launch School is the best!'
  number_of_lines -= 1
end

# Opposites Attract
def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

int_one = 0
into_two = 0

loop do
  puts ">> Please enter a positive or negative integer:"
  int_one = gets.to_i
  puts ">> Please enter a positive or negative integer:"
  int_two = gets.to_i

    if valid_number?(int_one) && valid_number?(int_two)
      break if (int_one ^ int_two) < 0
      puts "Sorry. One integer must be positive, one must be negative."
    else
      puts "Invalid input. Only non-zero integers are allowed."


end

sum = int_one + int_two
puts "#{int_one} + #{int_two} = #{sum}"
  
# input int_one
# input int_two
# check both are valid (if not print 
  #Invalid input. Only non-zero integers are allowed.)
# check one is negative (if not print
  #Sorry. One integer must be positive, one must be negative.)
# if all true break
# display sum
