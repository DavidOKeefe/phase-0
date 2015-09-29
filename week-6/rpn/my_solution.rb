# Implement a Reverse Polish Notation Calculator


# I worked on this challenge by myself.

# Pseudocode

# Input:
# Output:
# Steps:


# Initial Solution

class RPNCalculator
  attr_reader :expression, :operator

  def initialize(expression)
    @expression = expression
    @operator = ''
  end

  def evaluate
    seperate_arguments
    @expression.map!(&:to_i)
    if operator == '+'

    elsif operator == '-'

    elsif operator == '*'

    else
      raise ArgumentError
    end

  end

  private
  def seperate_arguments
    @operator = @expression.split(" ").pop
    @expression.map!(&:to_i)
  end
end



# 4. Refactored Solution






# Reflection
