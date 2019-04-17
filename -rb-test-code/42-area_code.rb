dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end
 
# Execution flow
loop do
  puts "Do you want to look up a city name? (Y/N)"
  input = gets.chomp.downcase
  break if input != "y"
  puts 
  puts "Please select from one of the following: "
  puts get_city_names(dial_book)
  puts
  puts "Choose a city"
  input = gets.chomp
  if get_city_names(dial_book).include?(input)
    puts "The area code for #{input} is #{get_area_code(dial_book, input)}."
  else
    puts "#{input} does not exist."
  end
end
