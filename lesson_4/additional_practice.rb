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

restult = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

# 8.
# What happens when we modify an array while we are iterating over it? What would be output by this code?
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end
# Output:
# => 1
# => 3
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end
# Output
# => 1
# => 2
# Iterators DO NOT work on a copy of the original array or from stale meta-data (length) about the array
# They operate on the original array in real time.

# 9. Write a version of the rails titleize implementation

def titalize(title)
  title.split.map { |word| word.capitalize }.join(' ')
end

words = "the flintstones rock"
titalize(words)

# 10.
# Modify the following hash such that each member of the Munsters family has an additional "age_group" key that has one of three-values
# describing the age group the family member is in (kid, adult, senior).

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

