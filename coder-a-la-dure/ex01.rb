 #encoding: utf-8
=begin
 Astuce: pour imprimer une utilisation de ligne spécifique.
 $ awk 'NR==14' ex1.rb  | ruby
 Astuce: pour spécifier une plage, utilisez ce qui suit.
 $ awk 'NR>=14 && NR<=15' ex1.rb  | ruby
 Astuce: vous pouvez également utiliser la command -sed équivalente.
 $ sed -n '13,14 p' ex1.rb  | ruby
=end
puts "Bonjour le monde!"
puts "Bonjour à nouveau"
puts "J'aime taper ceci."
puts "C'est amusant."
puts "Oui! Impression."
puts "Je préférerais de beaucoup vous 'pas'." 
puts %["Je \"dit\" ne touchez pas cela."]
=begin
 D'accord, j'échappe au caractère de citation avec la
 barre oblique inverse et utilise également le signe de 
 pourcentage pour effectuer une interpolation de chaîne
 das mon code.
=end