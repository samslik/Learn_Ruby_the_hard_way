def cheese_and_crackers(cheese_count, boxes_of_crackers)
  puts "You have #{cheese_count} cheeses!"
  puts "You have #{boxes_of_crackers} boxes of crackers!"
  puts "Man that's enough for a party!"
  puts "Get a blanket.\n"
end

puts "How many cheeses?"
cheese = $stdin.gets.chomp.to_i
puts "How many boxes of crackers?"
crackers = $stdin.gets.chomp.to_i

cheese_and_crackers(cheese+9, crackers+6)