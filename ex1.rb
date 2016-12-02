puts "How much money would you like to give me?"
money = gets.chomp.to_f
puts "I'll give to 10% back: #{(money * 0.1).round(2)}"

