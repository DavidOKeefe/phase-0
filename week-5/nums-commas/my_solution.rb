# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

#Pseudocode
# Input: Integer
# Output: String of integer with commas in the correct location
# Steps:
# 1. Turn the ingeger into a string
# 2. Reverse the string and split each letter into an array
# 3. Create an index that will increment each time the loop is run
# 4. Create blank array to hold solution
# 5. Check if index modulo 3 equals 0. If so, add number and comma
# 6. Otherwise only add number.
# 7. Check if the last item in the solution array is a comma
# 8. If so, remove it.
# 9. Convert array to string and reverse it.

# 1. Initial Solution
# def separate_comma(num)
#   index = 1
#   solution = []
#   num.to_s.reverse.split("").each do |num|
#     if index % 3 == 0
#       solution << num
#       solution << ','
#     else
#       solution << num
#     end
#     index += 1
#   end
#   solution.pop if solution[-1] == ','
#   solution.join("").reverse
# end


# 2. Refactored Solution
def separate_comma(num)
  solution = add_commas_every_three(num.to_s.reverse.split(""))
  solution.pop if solution[-1] == ','
  solution.join("").reverse
end

def add_commas_every_three(str_arr)
  index = 1
  solution = []
  str_arr.each do |num|
    if index % 3 == 0
      solution << num
      solution << ','
    else
      solution << num
    end
    index += 1
  end
  return solution
end



# 3. Reflection
# Q: What was your process for breaking the problem down? What different
#    approaches did you consider?
# A: I tried to think about it away from the computer. reversing the string was
#    the breakthrough for me.
#
# Q: Was your pseudocode effective in helping you build a successful initial
#    solution?
# A: It definitely got me started but there were issues I didn't consider until
#    I saw failing RSpec tests.
#
# Q: What Ruby method(s) did you use when refactoring your solution? What
#    difficulties did you have implementing it/them? Did it/they significantly
#    change the way your code works? If so, how?
# A: I tried to break out the solution into multiple methods. Still a long way
#    from single responsibility.
#
# Q: How did you initially iterate through the data structure?
# A: I iterated using the .each method.
#
# Q: Do you feel your refactored solution is more readable than your initial
#    solution? Why?
# A: Slightly, very slightly.
#
