$LOAD_PATH << "."
require 'the_module.rb'

class Student
  attr_accessor :first_name, :last_name, :password, :email
  
  def initialize(firstname, lastname, password, email)
    @first_name = firstname
    @last_name = lastname
    # @password = password
    @password = Crud.create_hash_digest(password)
    @email = email
    
  end
  
  
end

jerry = Student.new("jerry", "hall", "pw1", "hall.jerry9@gmail.com")

print "Please enter your password to confirm  -> "

valid = false
while !valid
  input = gets.chomp
  if Crud.verify_hash_digest(jerry.password) == input
    puts "#{input} is correct!"
    valid = true
    
  else
    print "Please try again  -> "
  end
end