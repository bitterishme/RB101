# 1.
# Code will print out 1 2 2 3 (each on a new line) because numbers.uniq does not mutate the caller
# and puts calls to_s on argument.

# 2.
# The !(bang) operator means that the method being called is mutating the caller whereas
# the ? indicates that the method will evaluate to a boolean (true or false) value.
#   1. what is != and where should you use it?
#        The != means not equal to and should be used in boolean comparison.
#   2. put ! before something, like !user_name
#        In this case, the ! means not, so (not)user_name.
#   3. put ! after something, like words.uniq!
#        This indicates that the method will mutate the object passed.
#   4. put ? before something
#        This is the ternary operator for if...else
#   5. put ? after something
#        As with the ! this is part of a method named indicating that the method
#        called will return a boolean value
#    6. put !! before something, like !!user_name
#        Is used to turn any object into their boolean equivalent.

# 3.
advice = "Few things in life are as important as house training your pet dinosaur."
advice.gsub!('important', 'urgent')

# 4.
numbers = [1, 2, 3, 4, 5]
numbers.delete_at(1) # Returns 2, removes 2 (element at index 1) from numbers
numbers.delete(1) # Deletes element 1 from numbers

# 5.
(10..100).cover?(42)

# 6.
famous_words = "seven years ago..."
famous_words.insert(0, 'Four score and ')
famous_words.prepend('Four score and ')
famous_words = "Four score and #{famous_words}"

# 7.
["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]].flatten!

# 8.
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.assoc('Barney')