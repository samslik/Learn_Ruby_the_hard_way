file = ARGV.first # przyuruchamianiu programu wpisz nazwe pliku: ex36_appendix.txt

historia = open(file)
puts historia.read

puts "Wpisz imie swojego bohatera"
$user_name = $stdin.gets.chomp
$user_name.capitalize!

def start
puts "Witaj #{$user_name}. Idziesz dlugim korytarzem. Na koncu widzisz dwoje drzwi. Wybierasz prawe czy lewe?"
drzwi = $stdin.gets.chomp
  if drzwi.downcase.include?("lewe")
    lewe_drzwi
  elsif drzwi.downcase.include?("prawe")
    prawe_drzwi
  else
    no_such_answer
  end
end

def no_such_answer
  puts"Nagle pojawia sie wielki potwor i cie zjada #{$user_name}! Przegrywasz."
  exit(0)
end

def lewe_drzwi
  puts "W kacie pokoju jezdzi wielki brunatny niedzwiedz na malym rowerku. Co robisz? Wcisnij 1, gdy chcesz z nim porozmawiac, 2 jesli chcesz walczyc"
  niedzwiedz = $stdin.gets.chomp
    if niedzwiedz == "1"
      puts 'Niedzwiedz mowi: "Grrrrr". Uciekasz czym predzej na korytarz, ktorym przyszedles.'
    prawe_drzwi
    elsif niedzwiedz == "2"
      puts "Walczysz z niedzwiedziem. Jesli wylosujesz 1-3 przegrasz walke, jesli wylosujesz 4-6 wygrasz. Losowanie..."
      wynik_walki = rand(1..6)
      puts "Wylosowales #{wynik_walki}"
        if wynik_walki <= 3
          puts"Niedzwiedz pokonal cie. Umierasz"
          przegrywasz
          exit(0)
        else
          puts "Wygrales walke z niedzwiedziem. Wygrales gre. Gratulacje"
          exit(0)
        end
    else
      no_such_answer
    end
end

def prawe_drzwi
  puts "Otwierasz prawe drzwi. Widzisz staruszke, ktora szyje spodnice.Musi uszyc jeszcze 10 spodnic i prosi cie o pomoc. Pomagasz - wcisnij 1, wysmiewasz ja - wcisnij 2"
  pomoc_staruszce = $stdin.gets.chomp
  if pomoc_staruszce == "1"
    pomagasz
  elsif pomoc_staruszce == "2"
    wysmiewasz
  else
    no_such_answer
  end
end

def pomagasz
  spodnica = 1
  while spodnica < 11
    puts "Uszyles #{spodnica} spodnice"
    spodnica += 1
  end
  puts "Jestes bardzo pomocny. Staruszka zakochuje sie w tobie. Bierzecie slub i zyjecie dlugo i szczesliwie"
  exit(0)
end

def przegrywasz
  puts "GAME OVER"
end

def wysmiewasz
  puts "Staruszka okazuje sie czarownica i Cie zabija"
  przegrywasz
  exit(0)
end

start
