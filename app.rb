require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './classroom'
require_relative './rental'

class App
  attr_accessor :books, :students, :teachers, :rentals

  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def display_all_books
    @books.each_with_index do |book, index|
      puts "#{index}) Title: '#{book.title}', Author: '#{book.author}'"
    end
  end

  def display_all_people
    @people.each_with_index do |people, index|
      puts "#{index} Name: #{people.name}, ID: #{people.id}, Age: #{people.age}"
    end
  end

  def create_person
    print 'Do you want to create a student(1) or a teacher(2)? [Input the number]: '
    person_option = gets.chomp.to_i
    print 'Age: '
    age = gets.chomp.to_i
    print 'Name: '
    name = gets.chomp
    if person_option == 1
      print 'Classroom: '
      classroom_ = gets.chomp
      print 'Has parent permmission? [Y/N]: '
      parent_permmission = gets.chomp.downcase == 'y'
      create_student(name, age, parent_permmission, classroom_)
    else
      print 'Specialization: '
      specialization = gets.chomp
      create_teacher(name, age, specialization)
    end
    puts 'Person created successfully'
  end

  def create_student(name, age, parent_permmission, classroom_)
    classroom = Classroom.new(classroom_)
    student = Student.new(age, name, parent_permmission)
    @people << student
  end

  def create_teacher(name, age, specialization)
    teacher = Teacher.new(specialization, age, name)
    @people << teacher
  end

  

  def run()
    puts 'run has been called'
    prompt
  end
end