# irb app

require 'bcrypt'

pw = BCrypt::Password.create("test")

puts pw
puts pw == "test"