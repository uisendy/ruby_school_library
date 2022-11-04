require './nameable'

class Person < Nameable
  attr_accessor :name, :age
  attr_reader :id, :rental

  def initialize(age, name = 'unknown', parent_permmission = true)
    super()
    @id = Random.rand(1..500)
    @name = name
    @age = age
    @parent_permmission = parent_permmission
    @rentals = []
  end

  def can_use_services?
    @parent_permmission || of_age?
  end

  def correct_name
    name
  end

  private

  def of_age?
    @age >= 18
  end
end
