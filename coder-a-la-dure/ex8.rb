formatrice = "%{premier} %{deuxieme} %{troisieme} %{quatrieme}"

puts formatrice % {premier: 1, deuxieme: 2, troisieme: 3, quatrieme: 4}
puts formatrice % {premier: "un", deuxieme: "deux", troisieme: "trois", quatrieme: "quatre"}
puts formatrice % {premier: true, deuxieme: false, troisieme: true, quatrieme: false}
puts formatrice % {premier: formatrice, deuxieme: formatrice, troisieme: formatrice, quatrieme: formatrice}

puts formatrice % {
    premier: "J'avais ce truc.",
    deuxieme: "Que vous pouvez taper à droite.",
    troisieme: "Mais ça n'a pas chanté.",
    quatrieme: "Alors j'ai dit bonsoir."
}

=begin
Étudiez cela attentivement et essayez de voir comment je mets le formateur à l'intérieur du formateur.

Exercices d'étude

Répétez l’exercice d’exercice 7.
=end 
