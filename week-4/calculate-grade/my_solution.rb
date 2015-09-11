# Calculate a Grade

# I worked on this challenge with: Eric.

# Your Solution Below

def get_grade(num)
  if num >= 90
    "A"
  elsif num <= 89 && num >= 80
    "B"
  elsif num <= 79 && num >= 70
    "C"
  elsif num <= 69 && num >= 60
    "D"
  else
    "F"
  end
end
