# Pauline Chane (@PaulineChane on GitHub)
# Ada Developers Academy C14
# binary_to_decimal method for CS Fundamentals
# 09/15/2020
#
# binary_to_decimal and decimal_to_binary methods written.
# Tests for decimal_to_binary have been added into binary_to_decimal_test.rb


# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.
def binary_to_decimal(binary_array)
  decimal_num = 0 # default variable

  # use enum to sum over entire array based off binary -> decimal conversion
  binary_array.each_with_index {|digit, index| decimal_num += digit * (2 ** (7-index))} # we are indexing backwards!

  return decimal_num
end

# BONUS: write a method that accepts a decimal integer and converts digit by digit to binary in a array of
#        single digits.

def decimal_to_binary(decimal_num)
  binary_array = [] # shovel array

  while decimal_num != 0 do # when original number has been divided over and over to 0, we have reached the end
    binary_array.prepend(decimal_num % 2) # remainder stored as element in array from right to left
    decimal_num /= 2 # divide by 2 to determine next remainder to find
  end

  return binary_array
end

