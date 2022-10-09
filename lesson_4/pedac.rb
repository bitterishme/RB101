# PROBLEM:

# Given a string, write a method change_me which returns the same
# string but with all the words in it that are palindromes uppercased.

# change_me("We will meet at noon") == "We will meet at NOON"
# change_me("No palindromes here") == "No palindromes here"
# change_me("") == ""
# change_me("I LOVE my mom and dad equally") == "I LOVE my MOM and DAD equally"

# input: string
# output: string (not the same object)
# rules:
#      Explicit requirements:
#        - every palindrome in the string must be converted to
#          uppercase. (Reminder: a palindrome is a word that reads
#          the same forwards and backward).
#        - Palindromes are case sensitive ("Dad" is not a palindrome, but "dad" is.)

#      Implicit requirements:
#        - the returned string shouldn't be the same string object.
#        - if the string is an empty string, the result should be an empty
#          string


# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []

# Questions:
# 1. What is a substring?
# 2. What is a palindrome?
# 3. Will inputs always be strings?
# 4. What does it mean to treat palindrom words case-sensitively?

# input: string
# output: array of substrings
# rules:
#      Explicit requirements:
#        - return only substrings which are palindromes.
#        - palindrome words should be case sensitive, meaning "abBA"
#          is not a palindrome.
#
# Algorithm:
#  substring method
#  ================
#      - create an empty array called 'result' that will contain all required substrings
#      - create a 'starting_index' variable (value '0') for the starting index of a substring
#      - start a loop that iterates over 'starting_index' from '0' to the length of the string minus 2
#        - create a 'num_chars' variable (value '2') for the length of a substring
#        - start an inner loop that iterates over 'num_chars' from '2' to 'string.length - starting_index'
#        - append the extracted substring to the 'result' array
#        - increment the 'num_chars' variable by '1'
#      - end the inner loop
#        - increment the 'starting_index' variable by '1'
#      - end the outer loop
#      - return the 'result' array

#  is_palindrom? method
#  ====================
#      - Inside the 'is_palindrom?' method, check whether the string value is
#        equal to its reversed value. You can se the String#reverse method.

#  palindrome_substring method
#  ===========================
# - initialize a result variable to an empty array
# - create an array named substring_arr that contains all of the
#   substrings of the input string that are at least 2 characters long.
# - loop through the words in the substring_arr array.
# - if the word is a palindrome, append it to the result array
# - return the result array
