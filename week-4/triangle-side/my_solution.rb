# I worked on this challenge with: Eric Shou.


# Your Solution Below

def valid_triangle?(a,b,c)

  if a + b > c && b + c > a && a + c > b
    true
  else
    false
  end
end
