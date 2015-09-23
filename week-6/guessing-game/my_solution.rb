# Build a simple guessing game


# I worked on this challenge by myself. Refactor done with a developer explaining some OOD principles.
# I spent 2 hours on this challenge.

# Pseudocode

# Input: Initialized with an answer and takes a guess as the input
# Output: High, Low, or Correct
# Steps:
# 1.) Create guess method that accepts a guess
# 2.) Evaluate if the guess is correct
# 3.) If correct, return :correct
# 4.) If high, return :high
# 5.) If low, return :low
# 6.) Determine and return whether game has been solved.



# Initial Solution

# class GuessingGame

#   def initialize(answer)
#     @answer = answer
#     @solved = false
#   end

#   def guess(guess)
#     if guess > @answer
#       @solved = false
#       return:high
#     elsif guess < @answer
#       @solved = false
#       return :low
#     else
#       @solved = true
#       return :correct
#     end
#   end

#   def solved?
#     @solved
#   end
# end




# Refactored Solution - Refactor done with a developer explaining some OOD principles.

class GuessingGame
  attr_reader :answer

  def initialize(answer)
    @answer = answer
    @solved = false
  end

  def guess(guess)
    guess = Guess.new(guess, answer)
    @solved = guess.status
    guess.message
  end

  def solved?
    @solved
  end
end


class Guess
  attr_reader :answer, :guess, :response_constructor

  Response = Struct.new(:status, :message)

  def initialize(guess, answer, response_constructor: Response)
    @answer = answer
    @guess = guess
    @response_constructor = response_constructor
  end

  def status
    response.status
  end

  def message
    response.message
  end

  private

  def response
    @response ||=
      if guess > answer
        response_constructor.new(false, :high)
      elsif guess < answer
        response_constructor.new(false, :low)
      else
        response_constructor.new(true, :correct)
      end
  end
end

# Reflection


# Q: How do instance variables and methods represent the characteristics and
#    behaviors (actions) of a real-world object?
# A: The class creates an object and instance variables are attributes specific
#    to the object that was created. Methods are the behavior of that object.
#
# Q: When should you use instance variables? What do they do for you?
# A: They should be used for attributes of an object created in a class. If the
#    variable only needs to be available within a method or within an
#    iteration then it should be a local variable but if it's a property of the
#    object instance it should be an instance variable.
#
# Q: Explain how to use flow control. Did you have any trouble using it in this
#    challenge? If so, what did you struggle with?
# A: Flow control is an evaluation of attributes and a different return or action
#    based on the results of that evaluation. I didn't have trouble implementing
#    the if/else logic but I wonder if there is a more succinct way to implement
#    this evaluation.
#
# Q: Why do you think this code requires you to return symbols? What are the
#    benefits of using symbols?
# A: The benefits are that symbols are immutable so their value will not be
#    changed and their object id will remain the same.
