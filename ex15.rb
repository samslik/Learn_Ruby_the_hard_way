#filename = ARGV.first
#txt = open(filename)
#puts "Here is your file:\n#{filename}"
#puts txt.read

puts "Type the name of the file you want to open"
file_again = $stdin.gets.chomp
file = open(file_again)
puts"Here is your file\n#{file.read}"
file.close