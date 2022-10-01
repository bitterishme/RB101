# Print Me (Part 1)
def print_me
  puts "I'm printing within the method!"
end

print_me

# Print Me (Part 2)
def print_me
  "I'm printing the return value"
end

puts print_me

# Greeting Through Methods (Part 1)
def hello
  "Hello"
end

def world
  "World"
end

puts hello + " " + world

# Greeting Through Methods (Part 2)
def hello
  'Hello'
end

def world
  'World'
end

def greet
  puts hello + " " + world
end

greet

# Make and Model
def car (make, model)
  return "#{make} #{model}"
end

puts car("Toyota", "Corolla")

# Day or Night?
daylight = [true, false].sample
def time_of_day(time)
  if time == true
    puts "It's daytime!"
  else
    puts "It's nighttime!"
  end
end

time_of_day(daylight)

# Naming Animals
def dog (name)
  return name
end

def cat(name)
  return name
end

puts "The dog's name is #{dog('Spot')}"
puts "The cat's name is #{cat('Ginger')}."

# Name Not Found
def assign_name(name='Bob')
  name
end

puts assign_name('Kevin') == 'Kevin'
puts assign_name == 'Bob'

# Multiply the Sum
def add(x, y)
  x + y
end

def multiply(x,y)
  x * y
end

puts add(2, 2) == 4
puts add(5, 4) == 9
puts multiply(add(2, 2), add(5, 4)) == 36

# Random Sentence
def name(name_array)
  name_array.sample
end 

def activity(activity_array)
  activity_array.sample
end

def sentence(name, activity)
  puts "#{name} went #{activity} today!"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))
