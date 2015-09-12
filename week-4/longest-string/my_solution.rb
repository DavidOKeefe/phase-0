# Longest String

# I worked on this challenge [by myself, with: ].

# longest_string is a method that takes an array of strings as its input
# and returns the longest string
#
# +list_of_words+ is an array of strings
# longest_string(list_of_words) should return the longest string in +list_of_words+
#
# If +list_of_words+ is empty the method should return nil


# Your Solution Below
def longest_string(list_of_words)
    word_hash = {}
  if list_of_words.length > 0
    list_of_words.each do |word|
      word_hash[word] = word.length
    end
    word_length_array = word_hash.sort_by {|key, value| value}
    word_length_array.reverse[0][0]
  else
    nil
  end
end
