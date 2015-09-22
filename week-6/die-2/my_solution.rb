# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself, with: ].
# I spent 1 hour on this challenge.

# Pseudocode

# Input: An array of strings
# Output: Randomly returns one of the strings.
# Steps:
# 1.) Check if array is empty and if so return argument error
# 2.) Determine number of sides by determining number of elements in the array.
# 3.) For a random roll, use the range of possible index values as the random number.


# Initial Solution

# class Die
#   def initialize(labels)
#     if labels.length > 0
#       @labels = labels
#     else
#       raise ArgumentError
#     end
#   end

#   def sides
#     @labels.length
#   end

#   def roll
#     @labels[rand(0...sides)]
#   end
# end



# Refactored Solution

class Die
  def initialize(labels)
    labels.empty? ? (raise ArgumentError) : (@labels = labels)
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end



# Reflection
# Q: What were the main differences between this die class and the last one you
#    created in terms of implementation? Did you need to change much logic to get
#    this to work?
# A: The main difference was that sides wasn't being provided, instead an array was
#    provided. This required sides to be determined.

# Q: What does this exercise teach you about making code that is easily changeable
#    or modifiable?
# A: That change is inevitable.

# Q: What new methods did you learn when working on this challenge, if any?
# A: I used the .equal? and .sample methods for the first time.

# Q: What concepts about classes were you able to solidify in this challenge?
# A: The times to use attr_reader vs defining the method.
