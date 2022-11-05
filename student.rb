require_relative './person'

class Student < Person
  def initialize(classroom, age, name = 'unknown', parent_permmission: true)
    super(age, name, parent_permmission: true)
    @classroom = classroom
  end

  def classroom(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
