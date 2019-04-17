class Student
  attr_accessor :first_name, :last_name
  # attr_reader
  
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
    puts "Welcome #{first_name.capitalize} #{last_name.capitalize}!"
  end
  


  
  
end

jerry = Student.new("Jerry", "Hall")

