puts 'You\'d need to know\'bout \\ escapes \n that do new lines and \t tabs.'

poem = <<END
\tThe lovely world
with logic so firmly planted
cannot discern \n the needs of love
nor comprehend passion from intuition
and requires an explanation
\n\t\twhere there is none.\n\n
END

puts poem

def secret_formula(started)
  jelly_beans = started * 500
  jars = jelly_beans/1000
  crates = jars/100
  return jelly_beans, jars, crates
end

start_point = 10000
beans, jars, crates = secret_formula(start_point)

puts "With a starting point of: #{start_point}"
puts "We'd have #{beans} beans, #{jars} jars, and #{crates} crates."

start_point = start_point/10
puts "We can also do that this way:"
puts "We'd have %s beans, %d jars and %d crates" %secret_formula(start_point)