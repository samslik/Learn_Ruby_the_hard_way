def while_loop
  i = 0
  numbers = []
  puts "Na jakim numerze ma sie zatrzymac petla?"
  x = $stdin.gets.chomp.to_i
while i < x
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end
end
puts "The numbers: "
while_loop