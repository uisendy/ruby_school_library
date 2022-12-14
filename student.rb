require_relative './person'

class Student < Person
  def initialize(age, name = 'unknown', parent_permmission: true)
    super(age, name, parent_permmission)
  end

  def classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
