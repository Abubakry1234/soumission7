def valeur_entree
    puts "veuillez entre une note entre 1 et 5"
    point = gets.to_i
while true
  if point <= 0 || point>5
    puts "veuillez entrer une note entre 1 et 5"
    point = gets.to_i
  else puts "Merci de saisir un commentaire"
    comment= gets
    post = "point：#{point}　comment：#{comment}"
        File.open("data.txt", "a") do |file|
          file.puts(post)
        end
        break
      end
    end
  end
def resultat_final
  puts"resultat à ce jour"
  File.open("data.txt", "r") do |file|
    file.each_line do |line|
      puts line
    end
  end
end
while true
  puts "Veuillez sélectionner le processus que vous souhaitez effectuer"
  puts "1 : Entrez les points de notation et les commentaires"
  puts "2 : Vérifiez les résultats jusqu'à présent"
  puts "3 : Quitter"
  num = gets.to_i

  case num
  when 1
    valeur_entree 
  when 2
    resultat_final
  when 3
    puts "Finir"
    break
  else
    puts "Veuillez entrer 1 à 3"
  end
end