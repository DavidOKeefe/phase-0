# Your Names
# 1) David O'Keefe
# 2) Shawn Watson

# We spent 2 hours on this challenge.

# Bakery Serving Size portion calculator.

#PSEUDOCODE

  # Create a method that accepts serving_size_mod from the calc
  # Create a hash with cookie, cake, and pie
  # Take serving size mod and divide pie, cake, and cookie in to it
  # Put that number into the value for that key
  # Take the remainder and repeat that with the remaining foods
  # Final remainder would be 0 because of cookies
  # Outputs a hash with the number of other things to make


def serving_size_calc(item_to_make, order_quantity)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
  final_count = {"pie" => 0, "cake" => 0, "cookie" => 0}
  serving_size = library[item_to_make]
  final_count[item_to_make] += order_quantity / serving_size
  serving_size_mod = order_quantity % serving_size

  raise ArgumentError.new("#{item_to_make} is not a valid input") unless library[item_to_make]

  determine_leftovers(serving_size_mod, library, final_count)

  p "You can make #{final_count["pie"]} pies and #{final_count["cake"]} cakes and #{final_count["cookie"]} cookies."
end


def determine_leftovers(serving_size_mod, library, final_count)
  until serving_size_mod == 0
    if serving_size_mod >= 7
      final_count["pie"] += (serving_size_mod / 7)
        puts serving_size_mod
    elsif serving_size_mod >= 5
      final_count["cake"] += (serving_size_mod / 5)
      serving_size_mod = (serving_size_mod % 5)
    else
      final_count["cookie"] += serving_size_mod
      serving_size_mod = 0
    end
  end
  return final_count
end

p serving_size_calc("pie", 76)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 50)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

# Reflection
# Q: What did you learn about making code readable by working on this challenge?
# A: I found it to be fun trying to diagnose how some confusing code works and
#    brainstorm new ways of accomplishing the desired result.
#
# Q: Did you learn any new methods? What did you learn about them?
# A: We talked about using various methods but most of our refactoring was on how
#    to better access values within a hash.
#
# Q: What did you learn about accessing data in hashes?
# A: I learned there are many ways to do it, some of which can be convoluted.
#
# Q: What concepts were solidified when working through this challenge?
# A: Ways to refactor code.
#























