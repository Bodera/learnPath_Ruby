#Déclarer des variables
nom = 'Rafael Bouc N. B.'
age =  19
taille = 68.5   #pouces.
poids = 132     #livres lourdes.
yeux = 'marron-foncé'
dents = 'blanc'
cheveux = 'noir'

#Facteur de conversion: livres lourdes en kilogrammes et pouces en centimètres
z_taille = taille * 2.54
z_poids = poids / 2.205

#L'utilisation de #{} son aussi appelé interpolation de chaîne. 
#Seulement autorisé lorsque des guillemets doubles "" sont utilisés.
puts "Parlons de #{nom}."
puts "Il a #{taille} pouces de hauteur."
puts "Il est #{poids} livres lourdes."
puts "En fait, ce n'est pas trop lourd."
puts "Il a #{yeux} yeux et #{cheveux} cheveux."
puts "Ses dents sont généralement #{dents} en fonction du café."
puts "Si j'ajoute #{age}, #{taille}, and #{poids} j'obtiens #{age + taille + poids}."

#L'utilisation des guillemets doubles "" permet également une séquence d'échappement.
puts "\n"
#Cette ligne imprimera tout dans les guillemets simples puts '\n'

#Méthode round nous permet de limiter le nombre de décimales après la virgule.
puts "Il pèse #{z_poids.round 2} kilogrammes."
puts "Il mesure #{z_taille.round(2)} centimétres."