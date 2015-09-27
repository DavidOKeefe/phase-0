# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with: Nathan Park.
# I spent 3 hours on this challenge.

# Pseudocode

# Input: 16 digit integer
# Output: True or False based on if the credit card number is valid
# Steps:

# 1.) Check that the input is 16 numbers long
# 2.) Put the numbers into an array

# 3.) Starting with the second to last digit, double every other digit until
#     you reach the first digit. reverse the array
# 4.) Create a counter for index position, increment by 2
# 5.) Split array based on index (even + 0) and (odd)
# 6.) (even + 0) array items should be doubled

# 7.) Sum all the untouched digits and the doubled digits (doubled digits need
#     to be broken apart, 10 becomes 1 + 0).
# 8.) Sum all the (odd) array items
# 9.) Array items in the "tens" need to be broken up

# 10.) If the total is a multiple of ten, you have received a valid credit card
#      number!
# 11.) Sum the total of both arrays (even + 0) and (odd)
# 12.) Return true if multiple of ten
#      else return false

# Initial Solution

# class CreditCard
#   attr_accessor :even_index_numbers, :odd_index_numbers, :answer
#   attr_reader :card_number

#   def initialize(card_number)
#     card_number = card_number.to_s.split("")
#     if card_number.length == 16
#       @card_number = card_number
#     else
#       raise ArgumentError
#     end
#     @even_index_numbers = []
#     @odd_index_numbers = []
#     @answer = 0
#   end

#   def split_card_number
#     index = 0
#     length = card_number.length
#     until index == length
#       if index.even?
#         @even_index_numbers << card_number[index]
#       else
#         @odd_index_numbers << card_number[index]
#       end
#         index += 1
#     end
#   end

#   def double_digits
#     even_index_numbers.map! {|num| num.to_i * 2 }
#   end

#   def split_digits
#     @even_index_numbers = even_index_numbers.join("").split("")
#   end

#   def add_numbers
#     @even_index_numbers.each {|num| @answer += num.to_i}
#     @odd_index_numbers.each {|num| @answer += num.to_i}
#   end

#   def check_card
#     split_card_number
#     double_digits
#     split_digits
#     add_numbers
#     @answer % 10 == 0
#   end
# end

## REFACTORED SOLUTION

# class CreditCard
#   attr_accessor :card_number

#   def initialize(card_number)
#     @card_number = card_number.to_s.split("")
#     raise ArgumentError if @card_number.length != 16
#   end

#   def check_card
#     double_digits
#     split_digits
#     add_numbers % 10 == 0
#   end

# private

#   def double_digits
#     convert_string_array_to_integer_array
#     card_number.each_index { |i| card_number[i] *= 2 if i.even? }
#   end

#   def split_digits
#     @card_number = card_number.join("").split("")
#   end

#   def add_numbers
#     convert_string_array_to_integer_array
#     card_number.inject {|sum, num| sum += num.to_i}
#   end

#   def convert_string_array_to_integer_array
#     card_number.map!(&:to_i)
#   end
# end

## SECOND REFACTORED SOLUTION

class CreditCard
  attr_accessor :card_number
  private :card_number

  def initialize(card_number)
    @card_number = card_number.to_s.split("")
    raise ArgumentError if @card_number.length != 16
  end

  def check_card
    add_numbers % 10 == 0
  end

private
  def add_numbers
    split_digits.inject { |sum, num| sum += num.to_i }
  end

  def split_digits
    double_even_digits.join("").split("").map!(&:to_i)
  end

  def double_even_digits
    card_number.map!(&:to_i).each_index { |i| card_number[i] *= 2 if i.even? }
  end
end

