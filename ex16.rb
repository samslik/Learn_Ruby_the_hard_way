filename = ARGV.first
puts ARGV.first
puts ARGV[0]
txt = open(filename, "a+")
txt.seek(10, IO::SEEK_END)
puts "I'm opening the file"
puts txt.read
puts "What would you like to write in the file?"
line1 = $stdin.gets.chomp
txt.write(line1)
txt.rewind
txt.gets

puts txt.read
txt.seek 0
txt.close
#ruby ex16.rb ex16_sample.txt