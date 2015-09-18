#PSEUDOCODE
# INPUT: Array of all students
# OUTPUT: Hash of Accountability Groups
# Steps: 1.) Create class that accepts array of students
#        2.) Determine number of students in class
#        3.) Create hash to accept the group assignments
#        4.) Based on number of students in class, assign to groups so all groups
#            have 4 or 5 students (minimum of 3 if needed)
#        5.) Increment group name.

class AccountabilityGroup

  def initialize(students)
    @students = students
    @unassigned_students = @students.length
    @group_number = 1
    @accountability_groups = {}
  end


  def create_accountability_groups
    assign_students_to_group(5) until @unassigned_students < 17
    until @unassigned_students <= 0
      if @unassigned_students % 5 == 0 ||
         @unassigned_students % 5 == 4
        assign_students_to_group(5)
      elsif @unassigned_students % 4 == 0 ||
            @unassigned_students == 13 ||
            @unassigned_students == 11 ||
            @unassigned_students == 7
        assign_students_to_group(4)
      elsif @unassigned_students % 3 == 0
        assign_students_to_group(3)
      else
        assign_students_to_group(@unassigned_students)
      end
    end
    return @accountability_groups
  end

private
  def assign_students_to_group(num)
    @accountability_groups["Accountability-Group-#{@group_number}"] = @students.shuffle!.pop(num)
    increment_group_number
    decrease_unassigned_student_count(num)
  end

  def increment_group_number
    @group_number += 1
  end

  def decrease_unassigned_student_count(num)
    @unassigned_students -= num
  end
end


grouping1 = AccountabilityGroup.new([1])
grouping2 = AccountabilityGroup.new([1,2])
grouping3 = AccountabilityGroup.new([1,2,3])
grouping4 = AccountabilityGroup.new([1,2,3,4])
grouping5 = AccountabilityGroup.new([1,2,3,4,5])
grouping6 = AccountabilityGroup.new([1,2,3,4,5,6])
grouping7 = AccountabilityGroup.new([1,2,3,4,5,6,7])
grouping8 = AccountabilityGroup.new([1,2,3,4,5,6,7,8])
grouping9 = AccountabilityGroup.new([1,2,3,4,5,6,7,8,9])
grouping10 = AccountabilityGroup.new([1,2,3,4,5,6,7,8,9,10])
grouping11 = AccountabilityGroup.new([1,2,3,4,5,6,7,8,9,10,11])
grouping12 = AccountabilityGroup.new([1,2,3,4,5,6,7,8,9,10,11,12])
grouping13 = AccountabilityGroup.new([1,2,3,4,5,6,7,8,9,10,11,12,13])
grouping14 = AccountabilityGroup.new([1,2,3,4,5,6,7,8,9,10,11,12,13,14])
grouping15 = AccountabilityGroup.new([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15])
grouping16 = AccountabilityGroup.new([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16])
grouping17 = AccountabilityGroup.new([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17])
grouping18 = AccountabilityGroup.new([1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18])

p grouping1.create_accountability_groups
p grouping2.create_accountability_groups
p grouping3.create_accountability_groups
p grouping4.create_accountability_groups
p grouping5.create_accountability_groups
p grouping6.create_accountability_groups
p grouping7.create_accountability_groups
p grouping8.create_accountability_groups
p grouping9.create_accountability_groups
p grouping10.create_accountability_groups
p grouping11.create_accountability_groups
p grouping12.create_accountability_groups
p grouping13.create_accountability_groups
p grouping14.create_accountability_groups
p grouping15.create_accountability_groups
p grouping16.create_accountability_groups
p grouping17.create_accountability_groups
p grouping18.create_accountability_groups

actual_grouping1 = AccountabilityGroup.new(["Aji Slater", "Alex Jamar", "Alison Lyons", "Aurelio Garcia",
                 "Awilda Cantres", "Celeste Carter", "Christopher Mark",
                 "CJ Joulain", "Colin Razevich", "David O'Keefe", "Eric Shou",
                 "Eunice Choi", "Farman Pirzada", "George Wambold", "Hana Worku",
                 "Harmin Jeong", "Hector Jair Moreno Gomez", "Ian Lockwood",
                 "Irina Renteria", "Jamie Runyan", "Jenna Andersen", "Julian Lesse",
                 "Jupiter Baudot", "Kai Huang", "Kim Allen", "Kristie Chow",
                 "Landey Patton", "Lauren Jin", "Lauren Markzon", "Marcel Galang",
                 "Marcus Davis", "Marvy Tagala", "Michael Landon",
                 "Michael Silberstein", "Miguel Melendez", "Mike Cerrone",
                 "Nathan Park", "Nicholas Yee", "Ovi Calvo", "Pamela Antonow",
                 "Paul Etscheit", "Regina Compton", "Richard Leo", "Ricky Binhai Hu",
                 "Rosslyn Sinclair-Chin", "Ryan Lesson", "Salim Rahimi",
                 "Sam Purcell", "Shawn Watson", "Shunqian Luo", "Solomon Fernandez",
                 "Un Choi", "Zino Hu"])
p actual_grouping1.create_accountability_groups

actual_grouping2 = AccountabilityGroup.new(["Aji Slater", "Alex Jamar", "Alison Lyons", "Aurelio Garcia",
                 "Awilda Cantres", "Celeste Carter", "Christopher Mark",
                 "CJ Joulain", "Colin Razevich", "David O'Keefe", "Eric Shou",
                 "Eunice Choi", "Farman Pirzada", "George Wambold", "Hana Worku",
                 "Harmin Jeong", "Hector Jair Moreno Gomez", "Ian Lockwood",
                 "Irina Renteria", "Jamie Runyan", "Jenna Andersen", "Julian Lesse",
                 "Jupiter Baudot", "Kai Huang", "Kim Allen", "Kristie Chow",
                 "Landey Patton", "Lauren Jin", "Lauren Markzon", "Marcel Galang",
                 "Marcus Davis", "Marvy Tagala", "Michael Landon",
                 "Michael Silberstein", "Miguel Melendez", "Mike Cerrone",
                 "Nathan Park", "Nicholas Yee", "Ovi Calvo", "Pamela Antonow",
                 "Paul Etscheit", "Regina Compton", "Richard Leo", "Ricky Binhai Hu",
                 "Rosslyn Sinclair-Chin", "Ryan Lesson", "Salim Rahimi",
                 "Sam Purcell", "Shawn Watson", "Shunqian Luo", "Solomon Fernandez",
                 "Un Choi", "Zino Hu"])
p actual_grouping2.create_accountability_groups


#REFLECTION
# Q: What was the most interesting and most difficult part of this challenge?
# A: The logic deciding between 3 4 and 5 was definitely the most difficult.
#
# Q: Do you feel you are improving in your ability to write pseudocode and break
#    the problem down?
# A: Little by little.
#
# Q: Was your approach for automating this task a good solution? What could have
#    made it even better?
# A: There must be a better way to evaluate the difference cases.
#
# Q: What data structure did you decide to store the accountability groups in
#    and why?
# A: I used a hash with the accountability group name as the key and an array of
#    students as the value. It seemed like a good way to keep track of which
#    students were in each cohort.
#
# Q: What did you learn in the process of refactoring your initial solution?
#    Did you learn any new Ruby methods?
# A: I had never used .shuffle before and wasn't in the habit of using .pop
#    I also got to play with variable scope and got to practice creating a class.
