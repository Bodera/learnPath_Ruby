chat_tigre = "\tJe suis tabulé dans."
chat_persan = "Je suis divisé\non a line."
chat_antislash = "Je suis \\ un \\ chat." 

# L'onglet ne fonctionne qu'avec des guillemets. """ Bon, ''' Mauvais.
gros_chat = """
Je vais faire une liste:
\t* nourriture pour chat
\t* poissons
\t* herbe à chat\n\t* herbe
"""

=begin
C’est l’ensemble des séquences d’échappement prises en charge par Ruby. Vous ne pouvez pas en utiliser beaucoup, mais mémoriser leur format et ce qu’ils font quand même. Essayez-les dans certaines chaînes pour voir si vous pouvez les faire fonctionner.
Échapper à ce qu'il fait.
\\ barre oblique inverse ()
\' 	Simple citation (')
\" 	Double citation (")
\a cloche ASCII (BEL)
\b retour arrière ASCII (BS)
\f FormFeed ASCII (FF)
\n saut de ligne ASCII (LF)
\r retour chariot ASCII (CR)
\t Onglet horizontal ASCII (TAB)
\uxxxx Caractère avec une valeur hexadécimale de 16 bits xxxx (Unicode uniquement)
\v Onglet vertical ASCII (VT)
\ooo Caractère octal ooo
\xhh Caractère avec la valeur hexadécimale hh

Exercices d'étude

     Mémorisez toutes les séquences d'échappement en les plaçant sur des cartes flash.
     Utilisez plutôt '' '(triple-single-quote). Pouvez-vous voir pourquoi vous pourriez utiliser cela au lieu de "" "?
     Combinez des séquences d'échappement et des chaînes de format pour créer un format plus complexe.
=end

puts chat_tigre
puts chat_persan
puts chat_antislash
puts gros_chat
