#
# PSEUDOCODE:
# ----------

# 1.) Create Hash literal "List"
# 2.) Create Add method that accepts two arguments which will be used as our
#     key/value pairs in our hash
# 3.) Create Remove method that will remove a key/value pair from the hash
# 4.) Create update  method to change values in the hash
# 5.) Create method to print using p to display the list on the console

#Lemonade, qty: 2
#Tomatoes, qty: 3
#Onions, qty: 1
#Ice Cream, qty: 4

#Initial Solution

# @list = {}

# def add(item,quantity)
#   @list[item] = quantity
# end

# def remove(item)
#   @list.delete(item)
# end

# def update(item,quantity)
#   @list[item] = quantity
# end

# def print_list
#   p @list
# end

#Refactored Solution

@list = {}

def add(item,quantity)
  @list[item] = quantity
end

def remove(item)
  @list.delete(item)
end

def update(item,quantity)
  add(item,quantity)
end

def print_list
  p @list
end


# Reflection

# Q: What did you learn about pseudocode from working on this challenge?
# A: I learned it's very difficult to avoid rewriting the instructions
#    without then describing specific ruby methods. There's a middle ground
#    that I hope will come with practice.
#
# Q: What are the tradeoffs of using Arrays and Hashes for this challenge?
# A: I'm curious to know how others implemented this using Arrays. How were
#    the items and quantities kept associated?
#
# Q: What does a method return?
# A: Methods return the value of the last statement.
#
# Q: What kind of things can you pass into methods as arguments?
# A: You can pass in strings, integers, floats, arrays, hashes, or nothing at all.
#    I'm wondering if you can pass in any object?
#
# Q: How can you pass information between methods?
# A: You can call one method from within another and pass arguments or you can
#    create variables that have a global scope. (Used above but I've heard is
#    bad practice) This exercise would have been more appropriate using a class
#    which has some additional ways to scope variables.
#
# Q: What concepts were solidified in this challenge, and what concepts are
#    still confusing?
# A: Writing psudocode is still challenging but I'm starting to have a better
#    idea of an approach. Our guide helped explain the difference between
#    puts, print, and p. Variable scope was also solidified.

