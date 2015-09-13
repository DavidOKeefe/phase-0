# Analyze the Errors

# I worked on this challenge by myself.
# I spent 1 hour on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# A: errors.rb
# 2. What is the line number where the error occurs?
# A: 170 (It reached the end of the file without finding a keyword_end)
# 3. What is the type of error message?
# A: syntax error
# 4. What additional information does the interpreter provide about this type of error?
# A: Unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# A: After link 15
# 6. Why did the interpreter give you this error?
# A: There is no end of input for the while loop.

# --- error -------------------------------------------------------

#south_park

# 1. What is the line number where the error occurs?
# A: 35
# 2. What is the type of error message?
# A: Name Error
# 3. What additional information does the interpreter provide about this type of error?
# A: undefined local variable or method `south_park' for main:Object
# 4. Where is the error in the code?
# A: south_park is undefined.
# 5. Why did the interpreter give you this error?
# A: Because the variable south_park is undefined.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# A: 50
# 2. What is the type of error message?
# A: Method Error
# 3. What additional information does the interpreter provide about this type of error?
# A: undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# A: Before the method cartman
# 5. Why did the interpreter give you this error?
# A: Because the method was not defined with def

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end

# cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
# A: 65
# 2. What is the type of error message?
# A: Argument error
# 3. What additional information does the interpreter provide about this type of error?
# A: wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# A: After the method name there are not any arguments accepted.
# 5. Why did the interpreter give you this error?
# A: Because an argument was passed to the method but the method does not accept arguments

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says

# 1. What is the line number where the error occurs?
# A: 84
# 2. What is the type of error message?
# A: Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# A: wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# A: The method is expecting an argument to be passed into it but none is provided
# 5. Why did the interpreter give you this error?
# A: Because an argument wasn't provided when the method was called.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
# A: 105
# 2. What is the type of error message?
# A: Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# A: wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
# A: The method is expecting two arguments but only one is provided.
# 5. Why did the interpreter give you this error?
# A: Because two arguments were not provided when the method was called.

# --- error -------------------------------------------------------

#5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
# A: 124
# 2. What is the type of error message?
# A: TypeError
# 3. What additional information does the interpreter provide about this type of error?
# A: String can't be coerced into Fixnum
# 4. Where is the error in the code?
# A: Fixed numbers can't be multiplied by strings
# 5. Why did the interpreter give you this error?
# A: Because a number is being multiplied by a string.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# A: 139
# 2. What is the type of error message?
# A: ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# A: `/': divided by 0
# 4. Where is the error in the code?
# A: Denominator is 0
# 5. Why did the interpreter give you this error?
# A: Because numbers can't be divided by 0.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# A: 155
# 2. What is the type of error message?
# A: LoadError
# 3. What additional information does the interpreter provide about this type of error?
# A: `require_relative': cannot load such file
# 4. Where is the error in the code?
# A: The file being required doesn't exist.
# 5. Why did the interpreter give you this error?
# A: Because the file name does not exist.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Q: Which error was the most difficult to read?
# A: The error messages I saaw were slightly different than what was shown in the example
#    Wasn't sure about the difference between "Where is the error in the code" and "Why did you get this error"
# Q: How did you figure out what the issue with the error was?
# A: The error messages were fairly straight forward.
# Q: Were you able to determine why each error message happened based on the code?
# A: I believe so
# When you encounter errors in your future code, what process will you follow to help you debug?
# A: Reading the error message and using the line number is very helpful.
