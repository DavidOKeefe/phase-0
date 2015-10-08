# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode
# 1.) Based on the number argument provided, run a recursive function that continues to run
#     until the function reaches the number argument.
# 2.) Each time recursion runs, Fib1 becomes Fib2 and Fib2 becomes Fib2+Fib1
# 3.) If number argument equals the recursive evaluation, return true. Otherwise false

# Initial Solution

# def is_fibonacci?(num)
#   num == calculate_fibonacci(num)
# end

# def calculate_fibonacci(num, f1=1, f2=1)
#     if f2 + f1 <= num
#       f2 += f1
#       f1 = f2-f1
#       calculate_fibonacci(num, f1, f2)
#     else
#       f2
#     end
# end

# Refactored Solution


def is_fibonacci?(num)
  num == calculate_fibonacci(num)
end

def calculate_fibonacci(num, prior_fib=0, fib_number=1)
    if (prior_fib + fib_number) <= num
      calculate_fibonacci(num, fib_number, (prior_fib + fib_number))
    else
      fib_number
    end
end


# Reflection
