puts "Hi! What's your first name?"
first_name = gets.chomp
puts "And what's your middle name?"
middle_name = gets.chomp
puts "And your last name?"
last_name = gets.chomp
full_name = first_name + " " + middle_name + " " + last_name
puts "Nice to meet you " + full_name + "!"

puts "What is your favorite number?"
fav_num_str = gets.chomp
new_fav_num_str = (fav_num.to_i + 1).to_s
puts "A better favorite number is " + new_fav_num_str + "!"


# Q: How do you define a local variable?
# A: Local variables are defined with an = sign

# Q: How do you define a method?
# A: Methods are defined with def and then the method name

# Q: What is the difference between a local variable and a method?
# A: Methods are containers for blocks of code while variables are
#    containers for pieces of data.

# Q: How do you run a ruby program from the command line?
# A: Use the command ruby and specify the file name.

# Q: How do you run an RSpec file from the command line?
# A: Use the command rspec and specify the file name.

# Q: What was confusing about this material? What made sense?
# A: Nothing confusing. Very basic ruby practice.

# Links to solutions:

# https://github.com/DavidOKeefe/phase-0/blob/master/week-4/define-method/my_solution.rb

# https://github.com/DavidOKeefe/phase-0/blob/master/week-4/address/my_solution.rb

# https://github.com/DavidOKeefe/phase-0/blob/master/week-4/math/my_solution.rb
