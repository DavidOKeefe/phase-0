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




# Refactored Solution

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
