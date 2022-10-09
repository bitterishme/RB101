# 1.
a = "forty two"
b = "forty two"
c = a

puts a.object_id # --> a.object_id
puts b.object_id # --> b.object_id
puts c.object_id # --> a.object_id

# 2.
# They all point to the same object_id because int is immutable.

# 3.
# my_string will not be mutated because the re-assignment in the method creates a new
# String object, but my_array will because << appends the new element to the object.

# 4. Same as above but reversed.

# 5.
def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

# 6.
def color_valid(color)
  color == 'blue' || color == 'green'
end