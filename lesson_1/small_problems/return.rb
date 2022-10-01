# Breakfast, Lunch, or Dinner (Part 1)
# Following code will output "Breakfast"
def meal
  return 'Breakfast'
end

puts meal

# Breakfast, Lunch, or Dinner (Part 2)
# The following code will output 'Evening'
def meal
  'Evening'
end

puts meal

# Breakfast, Lunch, or Dinner (Part 3)
# The following code will output 'Breakfast'
def meal
  return 'Breakfast'
  'Dinner'
end

puts meal

# Breakfast, Lunch, or Dinner (Part 4)
# The following code will print 'Dinner' then 'Breakfast'
def meal
  puts 'Dinner'
  return 'Breakfast'
end

puts meal

# Breakfast, Lunch, or Dinner (Part 5)
# The following code will print 'Dinner' and then nil. 'Dinner' because that is the 
# evaluated result of #puts and nil because the retun value of #puts is nil. Both
# are printed because #p is used
def meal
  'Dinner'
  puts 'Dinner'
end

p meal

# Breakfast, Lunch, or Dinner (Part 6)
# The following code will print 'Breakfast'. Method evaluates return statement then
# exits without evaluating the rest of the method.
def meal
  return 'Breakfast'
  'Dinner'
  puts 'Dinner'
end

puts meal

# Counting Sheep (Part 1)
# The following code will print 0-5 on subsequent lines. 5 is printed because the #times 
# block returns the initial integer, which is 5.
def count_sheep
  5.times do |sheep|
    puts sheep
  end
end

puts count_sheep

# Counting Sheep (Part 2)
# The following code will print 0-4 on subsequent lines then 10. Integer#times is no
# longer the last line of the method so 10 is the inplicit return value of count_sheep
# because it is the last line evaluated.
def count_sheep 
  5.times do |sheep|
    puts sheep
  end
  10
end

puts count_sheep

# Counting Sheep (Part 3)
# The following code will output 0, 1, 2, nil. nil because using #p displays the
# evaluation of puts which is nil.
def count_sheep
  5.times do |sheep|
    puts sheep
    if sheep >= 2
      return
    end
  end
end

# Tricky Number
# The following code will print 1. if clause will be evaluated everytime. Assignment
# to number will be output.
def tricky_number
  if true
    number = 1
  else
    2
  end
end

puts tricky_number

p count_sheep
