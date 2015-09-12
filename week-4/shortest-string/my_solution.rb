# Shortest String

# I worked on this challenge by myself.

# shortest_string is a method that takes an array of strings as its input
# and returns the shortest string
#
# +list_of_words+ is an array of strings
# shortest_string(array) should return the shortest string in the +list_of_words+
#
# If +list_of_words+ is empty the method should return nil

#Your Solution Below
def shortest_string(list_of_words)
  word_hash = {}
  if list_of_words.length > 0
    list_of_words.each do |word|
      word_hash[word] = word.length
    end
    word_length_array = word_hash.sort_by {|key, value| value}
    word_length_array[0][0]
  else
    nil
  end
end
