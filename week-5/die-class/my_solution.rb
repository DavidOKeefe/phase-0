# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent 1 hours on this challenge.

# 0. Pseudocode

# Input: Number of sides on the Die
# Output: A random roll of the Die.
# Steps:
# 1.) Confirm if argument is valid by checking if it's greater than 0
# 2.) If so create a instance variable so methods can access argument
# 3.) If not, raise an argument error
# 4.) Create sides method that returns the instance variable
# 5.) Create roll method that returns a random number between 1 and the number
#     of sides.


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     if sides > 0
#       @sides = sides
#     else
#       raise ArgumentError
#     end
#   end

#   def sides
#     @sides
#   end

#   def roll
#     rand(1..sides)
#   end
# end



# 3. Refactored Solution

class Die
  attr_reader :sides

  def initialize(sides)
    sides > 0 ? (@sides = sides) : (raise ArgumentError)
  end

  def roll
    rand(1..sides)
  end
end

# 4. Reflection

# Q: What is an ArgumentError and why would you use one?
# A: An argument error is something that is raised when the supplied argument does
#    not conform to expected input.
#
# Q: What new Ruby methods did you implement? What challenges and successes did
#    you have in implementing them?
# A: I implemented the rand method that took a range of values and generated a
#    random number within that range.
#
# Q: What is a Ruby class?
# A: A class contains state and behavior and is used to create objects.
#
# Q: Why would you use a Ruby class?
# A: To create objects.
#
# Q: What is the difference between a local variable and an instance variable?
# A: A local variable is only available within the method and instance variables
#    are available within the class.
#
# Q: Where can an instance variable be used?
# A: Anywhere within the class.
#
