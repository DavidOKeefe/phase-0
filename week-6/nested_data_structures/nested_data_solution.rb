# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[1][2][0]
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]

def nested_number_modifier(number)
  number.map! do |value|
    if value.is_a? Fixnum
      value + 5
    elsif value.is_a? Array
      nested_number_modifier(value)
    else
      p "Error: Array must contain numbers only"
    end
  end
end

p nested_number_modifier(number_array)

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def nested_name_modifier(name)
  name.map! do |value|
    if value.is_a? String
      value += "ly"
    elsif value.is_a? Array
      nested_name_modifier(value)
    else
      p "Error: Array must contain strings only"
    end
  end
end

p nested_name_modifier(startup_names)



## REFLECTION

# Q: What are some general rules you can apply to nested arrays?
# A: Think of it like a tree. Each nested array is another branch.
#
# Q: What are some ways you can iterate over nested arrays?
# A: I found recursive methods to be a good way to iterate over arrays.
#
# Q: Did you find any good new methods to implement or did you re-use one you
#    were already familiar with? What was it and why did you decide that was a
#    good option?
# A: I hadn't built the logic for a recursive method before so this was very
#    interesting to try.
