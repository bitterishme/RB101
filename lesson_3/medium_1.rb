# 1.
10.times { |number| puts (" " * number) + "The Flintstones Rock!" }

# 2. Error because int is not converted to string
puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s

# 3.
def factors(number)
  divisor = number
  factors = []
  begin
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end until divisor == 0
  factors
end

def factors(number)
  divisor = number
  factor = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end
# Determines if result of division is an int
# Returns the actual value instead of nil

# 4.
# Yes rolling_buffer1 will mutate the input argument buffer whereas rolling_buffer2
# will not. Both methods return the same value, however.

# 5.
def fib(first_num, second_num, limit)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

# 6.
answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8
# 34

# 7. Yes because the object_id is passed to the method.

# 8. paper

# 9. no
