user_name, age = ARGV
prompt = "<"

puts "Hi #{user_name}", "I'd like to ask you a few questions", "Where do you live?", prompt
location = $stdin.gets.chomp.capitalize
puts "You are #{age}, #{user_name}", prompt
puts "What computer do you have?", prompt
computer = $stdin.gets.chomp
puts "So #{user_name}...You live in #{location} and have this kind of computer: #{computer} and you are #{age} year old"