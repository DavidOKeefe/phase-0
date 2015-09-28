# Review and Refactor: Pad an Array

# I worked on this challenge by myself.



# First Person's solution I liked
#    What I learned from this solution
# Copy solution here:

#non-destructive
# def pad(array, size, string=nil)
#   new_array = array.clone
#   until new_array.count >= size
#     new_array << string
#   end
#   return new_array
# end


# #destructive
# def pad!(array, size, string=nil)
#   until array.count >= size
#     array << string
#   end
#   return array
# end





# Second Person's solution I liked
#    What I learned from this solution
# Copy solution here:
# def pad!(array, min_size, value=nil) #destructive
#   if min_size == 0 or array.length >= min_size
#     return array
#   else (min_size - array.length).times { |array, x| array << value.to_i }
#     return array
# end
# end

# def pad(array, min_size, value=nil) #non-destructive
#   array_1=Array.new(array)
#   if min_size == 0 or array.length >= min_size
#     return array_1
#     else (min_size - array_1.length).times { |array, x| array_1 << value }
#     return array_1
#   end
# end



# My original solution:
# def pad (collection, min_size, optional_padding=nil)
#   amount_to_pad = min_size - collection.length
#   starting_position = collection.length
#   collection.clone.fill(optional_padding, starting_position , amount_to_pad)
# end

# def



# def pad! (collection, min_size, optional_padding=nil)
#   amount_to_pad = min_size - collection.length
#   starting_position = collection.length
#   collection.fill(optional_padding, starting_position , amount_to_pad)
# end


# My refactored solution:

def pad (lunch_box, box_size, additional_lunch_items=nil)
  lunch_box.clone.fill(additional_lunch_items, lunch_box.length, (box_size - lunch_box.length))
end

def pad! (lunch_box, box_size, additional_lunch_items=nil)
  lunch_box.fill(additional_lunch_items, lunch_box.length, (box_size - lunch_box.length))
end

## I changed variable names to make it more clear what was going on. By doing this I was able to remove
## the creation of local variables and complete the assignmetn with one line. I think with the new names
## it is still understandable.


# 5. Reflection
