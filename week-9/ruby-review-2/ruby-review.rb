# Introduction to Inheritance

# I worked on this challenge with: Pamela Antonow.


# Pseudocode

# 1.) Create global cohort class that accepts a cohort name and a phase 0 start date
# 2.) Create global methods to add students, update performance, and remove students
# 3.) Add students will accept a name and email address. An array will store all the
#     cohort students with their name as the key and a nested hash as the value. The
#     nested hash will contain various attributes about the student.
# 4.) One of the student attributes will be their performance. An update performance
#     method will be created so a students performance can be updated.
# 5.) A remove student method will evaluate based on student performance whether
#     they should be removed.
# 6.) A method to determine which phase a cohort is currently in will be created that
#     compares current date to the start dates.
# 7.) A graduated? method will be created to determine if a cohort has already finished.
# 8.) A local cohort class will inherit from the global class. It will accept one additional
#     parameter, the city.
# 9.) All global methods will be available to the local class


# Initial Solution

require 'date'

class GlobalCohort
  attr_reader :p0_start_date, :immersive_start_date, :graduation_day
  attr_accessor :cohort_students

  def initialize(cohort_name, p0_start_date)
    @cohort_name = cohort_name
    @p0_start_date = Date.parse(p0_start_date)
    @immersive_start_date = @p0_start_date + 63
    @graduation_day = @p0_start_date + 123
    @cohort_students = {}
  end

  def add_student(name, email)
    cohort_students[name] = {:email => email, :performance => "Exceeds Expectations"}
  end

  def update_performance(name, updated_performance)
    cohort_students[name][:performance] = updated_performance
  end

  def remove_student()
    cohort_students.each do |student_name, student_attributes|
      if student_attributes[:performance] == 'Not Meeting Expectations'
        cohort_students.delete(student_name)
      end
    end
  end

  def currently_in_phase()
    if p0_start_date > DateTime.now
      "Pre Phase-0"
    elsif (DateTime.now - p0_start_date) < 63
      "Phase-0"
    elsif (DateTime.now - immersive_start_date) <= 21
      "Phase-1"
    elsif (DateTime.now - immersive_start_date) <= 42
      "phase-2"
    elsif (DateTime.now - immersive_start_date) <= 60
      "phase-3"
    else
      "Not in phase"
    end
  end

  def graduated?
    DateTime.now > graduation_day ? true : false
  end

end

class LocalCohort < GlobalCohort
  attr_reader :city

  def initialize(cohort_name, p0_start_date, city)
    super(cohort_name, p0_start_date)
    @city = city
  end
end


#Driver Code
bobolinks = GlobalCohort.new('bobolinks', '2105-08-17')
bobolinks.add_student('globalTest', 'test@test.com')
p bobolinks.cohort_students


chicago_bobolinks = LocalCohort.new('bobolinks', '2015-08-17', 'Chicago')
chicago_bobolinks.add_student('David', 'david@test.com')
chicago_bobolinks.add_student('Pamela', 'pamela@test.com')
chicago_bobolinks.add_student('tester', 'tester@test.com')
p chicago_bobolinks.cohort_students
chicago_bobolinks.update_performance('tester', 'Not Meeting Expectations')
chicago_bobolinks.remove_student()
p chicago_bobolinks.cohort_students
p chicago_bobolinks.p0_start_date
p chicago_bobolinks.immersive_start_date
p chicago_bobolinks.graduation_day
p chicago_bobolinks.city
p chicago_bobolinks.currently_in_phase
p chicago_bobolinks.graduated?


# Reflection
# Q: What concepts did you review in this challenge?
# A: We got some good practice with inheritance. It was confusing at first but we
#    learned quite a bit and got it working eventually.
# Q: What is still confusing to you about Ruby?
# A: Probably a lot but right now it's making sense. I guess I don't know what I don't know...
# Q: What are you going to study to get more prepared for Phase 1?
# A: I'm going to continue working ruby problems.
