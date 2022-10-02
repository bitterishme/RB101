# 1.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.include?('Spot')
ages.has_key?('Spot')
ages.member?('Spot')

# 2.
munsters_description = "The Munsters are creepy in a good way."
munsters_description.swapcase! # -> "tHE mUNSTERS ARE CREEPY IN A GOOD WAY."
munsters_description.capitalize! # -> "The munsters are creepy in a good way."
munsters_description.downcase! # -> "the munsters are creepy in a good way."
munsters_description.upcase! # -> "THE MUNSTERS ARE CREEPY IN A GOOD WAY."

# 3.
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
ages.merge(additional_ages)

#4.
advice = "Few things in life are as important as house training your pet dinosaur."
advice.inculude?('Dino') # -> false

# 5.
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# 6.
flintstones << 'Dino'

# 7.
flintstones.push('Dino').push('Hoppy')
flintstones.concat(%w(Dino Hoppy))

#8.
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice!("Few things in life are as important as ")
advice.slice!(0, advice.index('house'))
# using String#slice will return the same but will not mutate advice.

# 9.
statement = "The Flintstones Rock!"
statement.count 't'

# 10.
title = "Flintstone Family Members"
title.center(40)


