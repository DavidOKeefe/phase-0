# Calculate the mode Pairing Challenge

# I worked on this challenge with: Paul Etscheit

# I spent 1.5 hour on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# Q: What is the input?
# A: Array of numbers or words
# Q: What is the output? (i.e. What should the code return?)
# A: An array of the most frequently occurring numbers
# Q: What are the steps needed to solve the problem?

# 1) Iterate through array and put numbers into hash as key and the count of numbers
#    into hash as value.
# 2) Identify the largest value and set that as a variable.
# 3) Select all keys that have that max value.



# 1. Initial Solution - Solution used only array's
# def mode(num_array)
#   largest_occur = 0
#   solution = []
#   num_array.each do |num|
#     if num_array.count(num) > largest_occur
#       largest_occur = num_array.count(num)
#     end
#   end
#   num_array.each do |num|
#     if num_array.count(num) == largest_occur
#       solution << num
#     end
#   end
#   solution.uniq!
# end



# Initial Solution 2 - Using Hashes

# def mode(num_array)
#   num_hash = {}
#   num_array.each do |num|
#     num_hash[num] = num_array.count(num)
#   end
#   max_occur_array = num_hash.values.sort[-1]
#   num_hash.select{|k, v| v == max_occur_array}.keys
# end

# 3. Refactored Solution - Solution pulls responsibility for creating hash into
#    a separate method.

def mode(num_array)
  num_count_hash = count_numbers_in_array(num_array)
  max_occur = num_count_hash.values.sort[-1]
  num_count_hash.select{|k, v| v == max_occur}.keys
end

def count_numbers_in_array(num_array)
  num_count_hash = {}
  num_array.each do |num|
    num_count_hash[num] = num_array.count(num)
  end
  return num_count_hash
end


# 4. Reflection

# Q: Which data structure did you and your pair decide to implement and why?
# A: We implemented first using only arrays because we were more comfortable
#    with those compared to hashes. We then implemented using hashes for practice.
#
# Q: Were you more successful breaking this problem down into implementable
#    pseudocode than the last with a pair?
# A: Yes, a little better at talking through the approach and pseudocode ahead
#    of time.
#
# Q: What issues/successes did you run into when translating your pseudocode to
#    code?
# A: We had some difficulties working with Hashes and implementing what we had
#    discussed in our pseudocode.
#
# Q: What methods did you use to iterate through the content? Did you find any
#    good ones when you were refactoring? Were they difficult to implement?
# A: We used the .each and .select methods. We considered using .each_key and
#    .each_value methods


