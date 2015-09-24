# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: David O'Keefe].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 4 sets of 4 numbers, 16 numbers in total
# Output: true or false based on if the credit card number is valid
# Steps:

# Check that the input is 16 numbers long
# put the numbers into an array

# Starting with the second to last digit, double every other digit until you reach the first digit.
# reverse the array
# create a counter for index position, increment by 2
# split array based on index (even + 0) and (odd)
# (even + 0) array items should be doubled

# Sum all the untouched digits and the doubled digits (doubled digits need to be broken apart, 10 becomes 1 + 0).
# sum all the (odd) array items
# array items in the "tens" need to be broken up

# If the total is a multiple of ten, you have received a valid credit card number!
# sum the total of both arrays (even + 0) and (odd)
# return true if multiple of ten
# else return false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  attr_accessor :even_index_numbers, :odd_index_numbers, :answer
  attr_reader :card_number

  def initialize(card_number)
    card_number = card_number.to_s.split("")
    if card_number.length == 16
      @card_number = card_number
    else
      raise ArgumentError
    end
    @even_index_numbers = []
    @odd_index_numbers = []
    @answer = 0
  end

  def split_card_number
    index = 0
    length = card_number.length
    until index == length
      if index.even?
        @even_index_numbers << card_number[index]
      else
        @odd_index_numbers << card_number[index]
      end
        index += 1
    end
  end

  def double_digits
    even_index_numbers.map! {|num| num.to_i * 2 }
  end

  def split_digits
    @even_index_numbers = even_index_numbers.join("").split("")
  end

  def add_numbers
    @even_index_numbers.each {|num| @answer += num.to_i}
    @odd_index_numbers.each {|num| @answer += num.to_i}
  end

  def check_card
    split_card_number
    double_digits
    split_digits
    add_numbers
    @answer % 10 == 0
  end

end
