class Person
  def initialize(name)
    @name = name
  end

  def name
    @name
  end
end

class Doctor < Person
  def initialize(name, occupation)
    super(name)
    @occupation = occupation
  end

  def name
    "Dr. " + super
  end
end


dr_dave = Doctor.new("David", "Surgen")
p dr_dave.name
