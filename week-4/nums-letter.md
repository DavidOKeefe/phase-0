### 4.2 Numbers, Letters and Variables

Q: What does puts do?
A: Puts writes a given object to the screen. Whatever appears after puts will appear.

Q: What is an integer? What is a float?
A: An integer is a number with no decimal places and a float is a number that contains decimals. For examle 25 is an integer while 8.37 is a float.

Q: What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
A: When you divide integers the result will always be an integer rounded down. For example, if you divide 12/5 the result will be 2. Dividing with floats, even one float will return a float as the answer so 12/5.0 will return 2.4.

### Calculate Hours in a Year and Minutes in a Decade

Just for fun I created some simple methods:

```
def hours_in_year
  365 * 24
end

def minutes_in_years(years)
  (hours_in_year * 60) * years
end

puts hours_in_year
puts minutes_in_years(10)
```

### Reflection

Q: How does Ruby handle addition, subtraction, multiplication, and division of numbers?
A: Ruby is able to handle all these mathmatical operations.

Q: What is the difference between integers and floats?
A: An integer is a number with no decimal places and a float is a number that contains decimals. For examle 25 is an integer while 8.37 is a float.

Q: What is the difference between integer and float division?
A: When you divide integers the result will always be an integer rounded down. For example, if you divide 12/5 the result will be 2. Dividing with floats, even one float will return a float as the answer so 12/5.0 will return 2.4.

Q: What are strings? Why and when would you use them?
A: Ultimately strings are text. They can contain any characters including numbers and symbols but those symbols will not have programatic meaning other than as a string of text.

Q: What are local variables? Why and when would you use them?
A: Variables are basically containers where pieces of data can be assigned. Local variables exist within a limited (local) scope.
Q: How was this challenge? Did you get a good review of some of the basics?
A: Basic ruby.
