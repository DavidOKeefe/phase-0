#PSEUDOCODE
# INPUT: List of all students
# OUTPUT: Accountability Groups with 4 or 5 members each
# Steps: 1.) Create array of student names
#        2.) Randomize list
#        3.) Split into seperate lists making sure each split has min 4 members
#
#


def create_accountability_groups
  bobolinks = ["Aji Slater", "Alex Jamar", "Alison Lyons", "Aurelio Garcia",
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
               "Un Choi", "Zino Hu"]
  unassigned_students = bobolinks.length
  randomized_list = bobolinks.shuffle
  group_number = 1
  accountability_groups = {}
  until unassigned_students < 17
    accountability_groups["Accountability-Group-#{group_number}"] = randomized_list.pop(5)
    group_number += 1
    unassigned_students -= 5
  end
  if unassigned_students == 16
    until unassigned_students == 0
      accountability_groups["Accountability-Group-#{group_number}"] = randomized_list.pop(4)
      group_number += 1
    end
  elsif unassigned_students == 15
    until unassigned_students == 0
      accountability_groups["Accountability-Group-#{group_number}"] = randomized_list.pop(5)
      group_number += 1
    end
  elsif unassigned_students == 14
    accountability_groups["Accountability-Group-#{group_number}"] = randomized_list.pop(5)
    group_number += 1
    accountability_groups["Accountability-Group-#{group_number}"] = randomized_list.pop(5)
    group_number += 1
    accountability_groups["Accountability-Group-#{group_number}"] = randomized_list.pop(4)
    group_number += 1
  elsif unassigned_students == 13
    accountability_groups["Accountability-Group-#{group_number}"] = randomized_list.pop(5)
    group_number += 1
    accountability_groups["Accountability-Group-#{group_number}"] = randomized_list.pop(4)
    group_number += 1
    accountability_groups["Accountability-Group-#{group_number}"] = randomized_list.pop(4)
    group_number += 1
  else
    puts "error in logic"
  end
  accountability_groups
end

p create_accountability_groups

