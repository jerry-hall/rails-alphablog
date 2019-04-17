# user database
users = [
    { username: "mashrur", password: "pw1" },
    { username: "jack", password: "pw2" },
    { username: "jerry", password: "is awesome" }
]

def checkUser(usern, passw, list)
  list.each do |entry|
    if entry[:username] == usern && entry[:password] == passw
      return entry
    end
  end
  "Authentication failed"
end

25.times { print "-" }
puts
attempts = 1
while attempts < 4
  print "Please enter a username: "
  user = gets.chomp
  print "Please enter a password: "
  passw = gets.chomp
  authentication = checkUser(user, passw, users)
  puts authentication
  attempts += 1
  puts "Press any key to try again. Enter 'n' to exit"
  input = gets.chomp
  break if input == "n"
end
puts "You have exceeded #{attempts - 1} attempts"