# Factorial

# I worked on this challenge with: Celeste Carter.


# Your Solution Below
def factorial(number)
  answer = 1

  until number == 0
    answer *= number
    number -= 1
  end
  answer
end
