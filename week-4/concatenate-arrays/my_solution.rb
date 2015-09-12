# Concatenate Two Arrays

# I worked on this challenge by myself.


# Your Solution Below

def array_concat(array_1, array_2)
  concat_array = []
  array_1.each {|value| concat_array << value}
  array_2.each {|value| concat_array << value}
  concat_array
end
