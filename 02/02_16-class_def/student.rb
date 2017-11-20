class Student
  def initialize(name:, phone:) 
    @name = name
    @phone = phone
  end

  attr_accessor :name
  attr_accessor :last_name
  
  def full_name
    "#{@name} #{last_name}"
  end
  
  def say_hi
    puts "Hi, I'm #{full_name}"
  end
end

my_student = Student.new(name: 'mhd', phone: '123 123 123')

my_student.name = "Ahmad"
puts my_student.name