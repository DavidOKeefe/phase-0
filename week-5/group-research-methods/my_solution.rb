# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_finding_method(source, thing_to_find)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


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
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#
