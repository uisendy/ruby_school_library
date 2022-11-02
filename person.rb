class Person
  def initialize(age = 'unknown', age, parent_permission: true)
    super()
    @id = Random.rand(1..500)
    @name = name
    @age = age
    @parent_permmission = parent_permmission
  end

  attr_accessor :name, :age
  attr_reader :id

  def can_use_services?
    @parent_permmission || of_age?
  end

  private
  def of_age?
    @age >= 18 ? true : false
  end
end