# Cipher Challenge

# I worked on this challenge by myself.
# I spent 3 hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#   # This is standardizing the input by making everything downcase and then splitting the string into an array so the array
#   # contains each letter/character separately.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",   # The hash works well for hard coding the translation but since it's a consistent 4 characters
#             "h" => "d",   # there are ways to handle this using logic instead.
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here? It's iterating through each array value (letters from the string)
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#     # This is false until a match is found. Once found, it's set to true. If no match is found, the value is automatically
#     # added to the decoded sentence array.
#     cipher.each_key do |y| # What is #each_key doing here? It's iterating through the hash and comparing hash keys to the
#       # letters from the string.
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
#         # It's comparing letters in the original string to hash keys. X is element in the input array. Y is each key in the hash.
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? Once it finds a match it needs to stop iterating through the hash.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? It creates an array of numbers 1 - 9.
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? It's trying to determine if any of the if/else logic found a match.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning? This is returning a string of all the decoded values joined together.
# end

# Your Refactored Solution 1

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("")
#   decoded_sentence = []
#   input.each do |character|
#     if (character =~ /[a-z]/)
#       decoded_sentence << ('a'..'z').to_a.rotate(-4)[('a'..'z').to_a.index(character)]
#     elsif (character =~ /\@|\#|\$|\%|\^|\&|\*/)
#       decoded_sentence << " "
#     else
#       decoded_sentence << character
#     end
#   end
#   decoded_sentence.join("")
# end

# Driver Test Code:
# p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# # Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
# p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
# &fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
# p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
# p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
# @m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
# p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")



class Cipher
  ALPHABET = ('a'..'z').to_a
  attr_reader :secret_key
  private :secret_key

  def initialize(secret_key= -4)
    @secret_key = secret_key
  end

  def translate(coded_message)
    decrypt(coded_message).join("")
  end

  private
  def decrypt(coded_message)
    coded_message.downcase.split("").map do |character|
      if character =~ /[a-z]/
        convert_letters(character)
      elsif character =~ /\@|\#|\$|\%|\^|\&|\*/
        convert_punctuation(character)
      else
        character
      end
    end
  end

  def convert_letters(character)
    ALPHABET.rotate(secret_key)[ALPHABET.index(character)]
  end

  def convert_punctuation(character)
    " "
  end
end

# Driver Test Code:
dr_evil = Cipher.new
p dr_evil.translate("m^aerx%e&gsoi!")== "i want a coke!" #This is driver test code and should print true
p dr_evil.translate("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evil.translate("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evil.translate("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evil.translate("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")


# Reflection
# Keep your reflection limited to 10-15 minutes!

# Q: What concepts did you review or learn in this challenge?
# A:
#
# Q: What is still confusing to you about Ruby?
# A:
#
# Q: What are you going to study to get more prepared for Phase 1?
# A:
