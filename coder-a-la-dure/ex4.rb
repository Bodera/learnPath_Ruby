 #Traiter avec des variables.
cars = 100
spaces_in_a_car = 4.0
drivers = 30
passengers = 90
cars_not_driven = cars - drivers
cars_driven = drivers
carpool_capacity = cars_driven * spaces_in_a_car
average_passengers_per_car = passengers/ cars_driven

 #Incorporation des variable dans une chaîne.
puts"Il y a #{cars} voitures disponibles."
puts"Il n'y a que #{drivers} pilotes disponibles."
puts"Il y aura #{cars_not_driven} voitures vides aujourd'hui."
puts"Nous pouvons transporter #{carpool_capacity} personnes aujourd'hui."
puts"Nous avons #{passengers} covoiturage aujourd'hui."
puts"Nous devons mettre environ #{average_passengers_per_car} dans chaque voiture."