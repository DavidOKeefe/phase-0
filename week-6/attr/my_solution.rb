#Attr Methods

# I worked on this challenge by myself.

# I spent 1.5 hours on this challenge.

class NameData
  attr_reader :name

  def initialize
    @name = "David O'Keefe"
  end
end


class Greetings
  def initialize
    @student = NameData.new
  end

  def hello
    puts "Hello #{@student.name}! How wonderful to see you today!"
  end
end

greet = Greetings.new
greet.hello


# Release Reflection
# In Release 1, The class is creating an object with some basic info (Name, Age,
# Occupation) and the methods are allowing us to access that info from outside
# the class and also to be able to modify the info from outside the class.
#
# Releases 2 adds an attr_reader for age and removes the corresponding method.
# This is a simpler way to provide the same functionality. It's like a ruby shortcut.
#
# In Release 3 an attr_writer has been added and the method to change ages has
# been removed. The way the method was called has been changed also. The attr_writer
# is in effect creating a method called .age= which updates the age.
#
# Release 4 replaces attr_reader and attr_writer with an attr_accessor since
# attr_accessor provides methods for both read and write.
#
# Reflection
# Q: What is a reader method?
# A: A reader method allows instance variables to be accessed outside of the class.
#    attr_reader :name
#      is short for
#    def name
#      @name
#    end
#
# Q: What is a writer method?
# A: A writer method allows instance variables to be updated from outside of the
#    class
#    attr_writer :name
#      is short for
#    def name=(name)
#      @name = name
#    end
# Q: What do the attr methods do for you?
# A: Attr methods are short hand for the methods written out above.
# Q: Should you always use an accessor to cover your bases? Why or Why not?
# A: No, you should only provide the minimum about of access to variables that is
#    necessary.
# Q: What is confusing to you about these methods?
# A: Now that I understand them, nothing confusing.

