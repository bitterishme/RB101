# 1.
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# Turn this array into a hash where the names are the keys and the values
# are the positions in the array.
flintstones_hash = {}
flintstones.each_with_index {|element, i| flintstones_hash[element] = i }

# 2.
# Add up all the ages from the Munster famiy hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.sum

# 3.
# Remove people with age 100 and greater
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.reject! {|key, value| value > 100 }

# 4.
# Pick out the minimum age from current Munster family hash:
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
ages.values.min

# 5.
# Find the index of the first name that starts with "Be":
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.each_with_index do |element, i|
  puts i if element.include?("Be")
end
# or
flintstones.index { |name| name[0, 2] == "Be" }

#6.
# Amend array so that the names are all shortened to just the first three characters:
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! {|element| element[0, 3] }

# 7.
# Create a hash that expresses the frequency with which each letter occurs in this string:
statement = "The Flintstones Rock"
# For example:
{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }


#Algorithm
# 1. Iterate overy every character in statement
# 2. Take char, make key from it
# 3. in crease count of char
# 4. check the rest of statement for char
#     - increase count if char found
#     - move on to next char if not found
# 5. Add count as value to key