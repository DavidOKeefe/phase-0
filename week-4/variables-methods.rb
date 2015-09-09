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
