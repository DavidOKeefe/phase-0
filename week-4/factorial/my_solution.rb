# Factorial

# I worked on this challenge with: Celeste Carter.


# Your Solution Below
def factorial(number)
  num = number
  answer = 1

  while num > 0 do
    answer *= num
    num -= 1
  end
  answer
end
