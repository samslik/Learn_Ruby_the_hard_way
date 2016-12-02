#    1
#________T__R__WWWW______T_R_W!
#            2


$player1 = [1]
$player2 = [2]
#$plansza = ["_","_","_","_","_","_","_","_","T","_","_","R","_","_","W","W","W","W","_","_","_","_","_","_","T","_","R","_","W","!"]
$plansza = ["T","R","T","R","T","T","_","_","T","_","_","R","_","_","R","T","_","T","_","_","_","!"]
$czyj_ruch = ["p1", "p2", "p1", "p2","p1", "p2", "p1", "p2","p1", "p2", "p1", "p2","p1", "p2", "p1", "p2","p1", "p2", "p1", "p2","p1", "p2", "p1", "p2","p1", "p2", "p1", "p2",]

def gra
  puts "Oto wasza plansza"
  pokaz_plansze
  puts "Zaczyna zawodnik numer 1"
  while ($player1.index(1) < ($plansza.length) - 1) && ($player2.index(2) < ($plansza.length) - 1)
    $czyj_ruch.each do |ktory_zawodnik|
      if ktory_zawodnik == "p1"
        ruch1
      else
        ruch2
      end
      if ($player1.index(1) >= ($plansza.length) - 1) || ($player2.index(2) >= ($plansza.length) - 1)
        puts "Koniec gry"
        exit(0)
      end
    end
  end
end

def pokaz_plansze
  puts $player1.join.to_s
  wyglad_planszy
  puts $player2.join.to_s
end

def ruch1
  puts "Teraz gra zawodnik numer 1"
  rzut_kostka
i = 1
while i <= $wynik
  $player1.unshift("-")
  i+=1
end
pokaz_plansze

porownanie("zawodnik1")
end

def ruch2
  puts "Teraz gra zawodnik numer 2"
  rzut_kostka
  i = 1
  while i <= $wynik
    $player2.unshift("-")
    i+=1
  end

  pokaz_plansze
  porownanie("zawodnik2")
end

def rzut_kostka
  puts "Aby rzucic kostka - nacisnij k"
  kos = $stdin.gets.chomp
  if kos == "k"
  $wynik = rand(1..6)
  puts "Wylosowales #{$wynik}. Ruszasz sie o #{$wynik} do przodu"
  else
    rzut_kostka
  end
end

def wyglad_planszy
  puts $plansza.join.to_s
end

def porownanie(kt_zaw)
  if kt_zaw == "zawodnik1"
  $pole1 = ($player1.length) - 1
  if $plansza[$pole1] == "T"
    puts "Stanales na polu T. Idziesz 3 pola do przodu"
    $player1.unshift("-", "-", "-")
    pokaz_plansze
    porownanie("zawodnik1")
  elsif $plansza[$pole1] == "R"
    puts "Czekasz kolejke!"
    ruch2
  end

  else
    $pole2 = ($player2.length) - 1
    if $plansza[$pole2] == "T"
      puts "Stanales na polu T. Idziesz 3 pola do przodu"
      $player2.unshift("-", "-", "-")
      pokaz_plansze
      porownanie("zawodnik2")
    elsif $plansza[$pole2] == "R"
      puts "Czekasz kolejke!"
      ruch1
    end
    end
end

gra