# Numbers to English Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode



# Initial Solution
NUMBER_STRINGS = {
  0 => "",
  1 => "one",
  2 => "two",
  3 => "three",
  4 => "four",
  5 => "five",
  6 => "six",
  7 => "seven",
  8 => "eight",
  9 => "nine",
  10 => "ten",
  11 => "eleven",
  12 => "twelve",
  13 => "thirteen",
  14 => "fourteen",
  15 => "fifteen",
  16 => "sixteen",
  17 => "seventeen",
  18 => "eightteen",
  19 => "nineteen",
  20 => "twenty",
  30 => "thirty",
  40 => "forty",
  50 => "fifty",
  60 => "sixty",
  70 => "seventy",
  80 => "eighty",
  90 => "ninety",
  100 => "one-hundred"
}





def number_to_word(number)
  if number < 20
    NUMBER_STRINGS[number]
  elsif number.to_s.split('').length == 2
    split_numbers = number.to_s.split('')
    "#{NUMBER_STRINGS[split_numbers[0].to_i * 10]}-#{NUMBER_STRINGS[split_numbers[1].to_i]}"
  end
end


# Refactored Solution






# Reflection
