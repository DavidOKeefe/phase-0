# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
 source.select {|word| word.to_s.include?(thing_to_find) }
end

def my_hash_finding_method(source, thing_to_find)
  source.select{|key, value| value==thing_to_find}.keys
end

# Identify and describe the Ruby method(s) you implemented.
#For the array method: select which iterates through every element of the array
#and returns a new array of objects based on the logic passed through the block.
#For the block, the include? method made most sense, since it searches the array for the given object.
#This is a heterogenous/mixed array (contains both integers and strings), so the method "to_s"
#was necessary to make sure that the comparison is made between objects of the same type
#(this happens only within the block and doesn't actually transform the array objects).

#A similar approach was used for the hash,
#except that in this case the double equal sign operand was used. The keys method returns the
#associated keys for the values that pass the block.

# Person 2
def my_array_modification_method!(list, quantity_to_add)
  list.map! do |x|
    if x.is_a? Integer
      x = x + quantity_to_add
    end
    x
  end
  return list
end

def my_hash_modification_method!(hash, years_to_add)
  hash.each do |k,v|
    hash[k] = v + years_to_add
  end
  return hash
end

# Identify and describe the Ruby method(s) you implemented.
# For permanently altering the original array, I used the map! method.
# "map!" saves you time by performing .each and storing the change into a new array.
# The reference variable name "i_want_pets" now points to the new array.
# I also used ".is_a?" to add quantity_to_add to the element in the array if it is an Integer.
#
#
# For permanently altering the hash, I just directly changed the values for each key.
# Since hashes sort of act like a dictionary, you can permanently alter the values.
# A friend taught me this metaphor. If a "banana" is defined as a "yellow fruit,"
# then you can change it now mean "blue fruit." In a hash, you can permanently change
# values by just altering it.


# Person 3
def my_array_sorting_method(source)
  source.sort_by { |element| element.to_s }
end

# Initial
# def my_hash_sorting_method(source)
#   source.to_a.sort_by { |element| element[1] }
# end

#Refactored
def my_hash_sorting_method(source)
   source.sort { |a, b| a[1] <=> b[1] }
end




# Identify and describe the Ruby method(s) you implemented.
#
# I used the sort_by method which accepts a block with one parameter and sorts
# the elements based on the results of the block call. For example, if we wanted
# to sort strings by their length, the block could evaluate element.length and sort
# by those results.
#
# For this exericise the array contained both integers and strings so for the block
# parameter I converted integers to strings using the .to_s method.
# This does not change the integers to strings in the sorted results, only during
# the block evaluation.
#
# For hash sorting, first I used the sort_by method to identify the value of each
# element and sort by that value.
#
# The .sort method can be run without parameters or can accept two parameters which
# allows you to create your own comparitor. For example, sort without any parameters
# in effect runs this block: { |a, b| a <=> b } but if you wanted to reverse the sort
# you could include the following block { |a, b| b <=> a }. The operator being used
# is referred to as the spaceship which determines less than, equal to, or greater than.
#
# For the hash sorting using the .sort method I provided the parameter to sort by
# the hash keys.


# Person 4

# my_array_deletion_method! deletes all words that contain an 'a'
def my_array_deletion_method!(source, thing_to_delete)
    #delete method will delete value pair and returns value from hash who's key = key
  source.delete_if {|a| a.to_s.include?(thing_to_delete.to_s)}
  return source
end

def my_hash_deletion_method!(source, thing_to_delete)
    #delete method will delete value pair and returns value from hash who's key = key
  source.delete(thing_to_delete)
  return source
end

# Identify and describe the Ruby method(s) you implemented.
# I had to create a method that would delete an item in a data structure.
# In order to do that, I needed to pass two arguments: the list and the item I
# wanted removed. In the code, I wrote out that something would be deleted if I
# iterated through the data structure and found what I wanted deleted from the
# paramter I set.After the method removed the item, it would return the list.
# Where I have a destructive method, it would return the updated list and keep
# it that way, but the nondestructive method would show the updated version of
# the list, but would not store it as a new list.
#
#


# Person 5
def my_array_splitting_method(source)
  split_source = []
  split_source << source.select {|value| value.class == Fixnum }
  split_source << source.select {|value| value.class == String }
  return split_source
end

def my_hash_splitting_method(source, age)
  split_source = []
  split_source << source.select {|key, value| value <= age }.to_a
  split_source << source.select {|key, value| value > age }.to_a
  return split_source
end

# Identify and describe the Ruby method(s) you implemented.
# I used the .select method which runs a block and returns an array containing
# the elements meeting the block evaluation parameters.
#
#

# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
