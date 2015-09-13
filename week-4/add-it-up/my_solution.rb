# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Celeste Carter.

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: An array of numbers
# Output: A variable containing the total of our numbers
# Steps to solve the problem.

# 1.) Declare a variable to save the total result.
# 2.) Iterate through array and add each value to our total variable
# 3.) Return total variable




# 1. total initial solution
# def total(num_array)
#   sum = 0
#   num_array.each do |num|
#     sum += num
#   end
#   sum
# end


# 3. total refactored solution
def total(num_array)
  num_array.inject(0) {|sum, n| sum + n}
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings
# Output: A concatenated string of all the array strings
# Steps to solve the problem.

# 1.) Declare a variable to save the total result.
# 2.) Iterate through array and add each value to our total variable
# 3.) Return total variable


# 5. sentence_maker initial solution
# def sentence_maker(words_arr)
#   concat_string = ""
#   words_arr.each do |word|
#     concat_string += word.to_s " "
#     concat_string += " "
#   end
#   concat_string.rstrip!
#   concat_string += "."
#   concat_string.capitalize!
#   concat_string
# end


# 6. sentence_maker refactored solution
def sentence_maker(words_arr)
  words_arr.join(" ").rstrip.capitalize + "."
end

