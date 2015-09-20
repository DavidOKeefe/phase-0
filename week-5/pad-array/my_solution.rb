# Pad an Array

# I worked on this challenge with: Kim Allen

# I spent 2.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

#Input: An array and a minimum size value and an optional argument
#Output: A new array containing the original array and padding info

#To solve:
#Create a method that accepts three arguments.
#Determine the length of the array
# array.length
#Compare the length with the minumum size.
#>, <, =
#If the length is equal to or greater than return a copy of the original array
#If the length is less than the minimum return a new array until the length equals the minumum size.  If an optional argument is accepted, then pad with that argument.
#Return the new array


# Initial Solution # 1

# def pad (array, min_size, *optional_padding)
#   array_length = array.length
#   new_array = []
#   array.each {|num| new_array << num}
#   until array_length >= min_size
#     if optional_padding.length > 0
#       new_array << optional_padding
#     else
#       new_array << nil
#     end
#     array_length += 1
#   end
#   return new_array.flatten
# end


# Initial Solution # 2

# def pad (array, min_size, optional_padding=nil)
#   array_length = array.length
#   new_array = array.clone
#   until array_length >= min_size
#     new_array << optional_padding
#     array_length += 1
#   end
#   return new_array
# end

# def pad! (array, min_size, optional_padding=nil)
#   array_length = array.length
#   until array_length >= min_size
#     array << optional_padding
#     array_length += 1
#   end
#   return array
# end

# Refactored Solution

def pad (collection, min_size, optional_padding=nil)
  amount_to_pad = min_size - collection.length
  starting_position = collection.length
  collection.clone.fill(optional_padding, starting_position , amount_to_pad)
end

def pad! (collection, min_size, optional_padding=nil)
  amount_to_pad = min_size - collection.length
  starting_position = collection.length
  collection.fill(optional_padding, starting_position , amount_to_pad)
end

# 4. Reflection

# Q: Were you successful in breaking the problem down into small steps?
# A: We got pretty close. Needed to make some adjustments once we started to code
#
# Q: Once you had written your pseudocode, were you able to easily translate it
#    into code? What difficulties and successes did you have?
# A: Yes, for the most part. We originally had an if statement with the until block
#    within but realized it was unnecessary once we started coding.
#
# Q: Was your initial solution successful at passing the tests? If so, why do
#    you think that is? If not, what were the errors you encountered and what
#    did you do to resolve them?
# A: We encountered problems with the optional padding parameter being a nested
#    array. We also were receiving "" instead of nil with our initial solution.
#
# Q: When you refactored, did you find any existing methods in Ruby to clean up
#    your code?
# A: We used .flatten .clone .fill
#
# Q: How readable is your solution? Did you and your pair choose descriptive
#    variable names?
# A: I think it's fairly readable in the refactored version.
#
# Q: What is the difference between destructive and non-destructive methods in
#    your own words?
# A: Destructive methods change an existing object while non-destructive methods
#    return a new object that has been modified.
#
