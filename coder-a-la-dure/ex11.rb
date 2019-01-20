=begin 

5.times {
  puts "."
  sleep 2
}

# STDOUT.sync = true
5.times {
  print "."
  sleep 2
}
=end

#J'utilise print au lieu de putting pour imprimer la chaîne sans \ n (nouvelle ligne) imprimée et l'invite s'arrête là où l'utilisateur doit entrer la réponse.
print "Quel âge avez-vous? "
age = gets.chomp
print "Quelle est votre taille? "
hauteur= gets.chomp
print "Combien pèse-tu? "
poids = gets.chomp

# Print ne tolère pas l'interpolation de chaîne.
puts "Donc, vous avez #{age} ans, #{hauteur} grande et #{poids} lourd."

=begin
Exercices d'étude

     Allez en ligne et découvrez ce que fait Ruby's gets.chomp.
     Pouvez-vous trouver d'autres moyens de l'utiliser? Essayez quelques-uns des échantillons que vous avez trouvés.
     Écrivez un autre "formulaire" comme celui-ci pour poser d'autres questions.
=end
