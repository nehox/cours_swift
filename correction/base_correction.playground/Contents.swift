

// Exercice 1 : Variables et constantes
// Déclarez une variable `nom` et une constante `âge` avec vos informations personnelles
// Affichez-les en utilisant `print`

// Exercice 2 : Types de données de base
// Déclarez une variable `prix` de type Double et une constante `quantité` de type Int
// Calculez le total et affichez-le

// Exercice 3 : Structures de contrôle
// Utilisez une boucle `for` pour afficher les nombres de 1 à 10
// Utilisez une condition `if` pour vérifier si un nombre est pair ou impair

// Exercice 4 : Fonctions
// Créez une fonction `calculerCarre` qui prend un Int en paramètre et retourne son carré
// Appelez cette fonction avec le nombre 5 et affichez le résultat

// Exercice 5 : Collections
// Créez un tableau `nombres` contenant les nombres de 1 à 5
// Créez un dictionnaire `capitales` avec quelques pays et leurs capitales
// Affichez le deuxième élément du tableau et la capitale de la France

// Exercice 6 : Optionnels
// Déclarez une variable optionnelle `nombreOptionnel` de type Int
// Utilisez le déballage optionnel pour afficher sa valeur si elle existe

// Exercice 7 : Classes et structures
// Créez une structure `Livre` avec des propriétés `titre` et `auteur`
// Créez une instance de `Livre` et affichez ses propriétés

// Exercice 8 : Énumérations
// Créez une énumération `JourDeLaSemaine` avec les jours de la semaine
// Déclarez une variable `aujourdHui` de type `JourDeLaSemaine` et affectez-lui une valeur


import UIKit

// Correction Exercice 1 : Variables et constantes
var nom = "Alice"
let âge = 30
print("Nom : \(nom), Âge : \(âge)")

// Correction Exercice 2 : Types de données de base
let prix: Double = 19.99
let quantité: Int = 3
let total = prix * Double(quantité)
print("Total : \(total)")

// Correction Exercice 3 : Structures de contrôle
for i in 1...10 {
    print(i)
}

let nombre = 4
if nombre % 2 == 0 {
    print("\(nombre) est pair")
} else {
    print("\(nombre) est impair")
}

// Correction Exercice 4 : Fonctions
func calculerCarre(nombre: Int) -> Int {
    return nombre * nombre
}

let carré = calculerCarre(nombre: 5)
print("Carré de 5 : \(carré)")

// Correction Exercice 5 : Collections
let nombres = [1, 2, 3, 4, 5]
let capitales = ["France": "Paris", "Espagne": "Madrid", "Italie": "Rome"]
print("Deuxième élément du tableau : \(nombres[1])")
print("Capitale de la France : \(capitales["France"] ?? "Inconnu")")

// Correction Exercice 6 : Optionnels
var nombreOptionnel: Int? = 10
if let nombre = nombreOptionnel {
    print("Nombre optionnel : \(nombre)")
}

// Correction Exercice 7 : Classes et structures
struct Livre {
    let titre: String
    let auteur: String
}

let livre = Livre(titre: "Le Petit Prince", auteur: "Antoine de Saint-Exupéry")
print("Livre : \(livre.titre) par \(livre.auteur)")

// Correction Exercice 8 : Énumérations
enum JourDeLaSemaine {
    case lundi, mardi, mercredi, jeudi, vendredi, samedi, dimanche
}

let aujourdHui = JourDeLaSemaine.lundi

