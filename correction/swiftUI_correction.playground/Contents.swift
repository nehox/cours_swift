import SwiftUI
import PlaygroundSupport

// Exercice 1 : Créer une vue simple
// Créez une vue qui affiche un texte "Bonjour, SwiftUI !" au centre de l'écran

// Exercice 2 : Utiliser des piles (Stacks)
// Créez une vue qui utilise une VStack pour afficher trois textes "Premier", "Deuxième" et "Troisième" verticalement

// Exercice 3 : Utiliser des images
// Créez une vue qui affiche une image système (par exemple, "star.fill") et un texte en dessous

// Exercice 4 : Utiliser des boutons
// Créez une vue avec un bouton qui affiche un texte "Appuyez-moi" et qui affiche une alerte lorsque le bouton est pressé

// Exercice 5 : Utiliser des listes
// Créez une vue qui affiche une liste de trois éléments (par exemple, "Pomme", "Banane", "Cerise")

// Exercice 6 : Utiliser des états
// Créez une vue avec un bouton et un texte. Le texte doit changer lorsque le bouton est pressé

// Exercice 7 : Utiliser des navigations
// Créez une vue avec une NavigationView et une liste de liens qui naviguent vers une nouvelle vue

// Exercice 8 : Utiliser des formulaires
// Créez une vue avec un formulaire qui contient un champ de texte et un bouton

// Exercice 9 : Utiliser des onglets
// Créez une vue avec un TabView qui contient deux onglets, chacun avec un texte différent

// Exercice 10 : Utiliser des feuilles (Sheets)
// Créez une vue avec un bouton qui affiche une feuille modale lorsque le bouton est pressé

//PlaygroundPage.current.setLiveView(/* Remplacez par votre vue */ Text("Exercices SwiftUI"))






import SwiftUI
import PlaygroundSupport

// Correction Exercice 1 : Créer une vue simple
struct Exercice1: View {
    var body: some View {
        Text("Bonjour, SwiftUI !")
            .font(.title)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.yellow)
    }
}

// Correction Exercice 2 : Utiliser des piles (Stacks)
struct Exercice2: View {
    var body: some View {
        VStack {
            Text("Premier")
            Text("Deuxième")
            Text("Troisième")
        }
    }
}

// Correction Exercice 3 : Utiliser des images
struct Exercice3: View {
    var body: some View {
        VStack {
            Image(systemName: "star.fill")
                .font(.largeTitle)
            Text("Étoile")
        }
    }
}

// Correction Exercice 4 : Utiliser des boutons
struct Exercice4: View {
    @State private var showingAlert = false

    var body: some View {
        Button("Appuyez-moi") {
            showingAlert = !showingAlert
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Bouton pressé"), message: Text("Vous avez appuyé sur le bouton"), dismissButton: .default(Text("OK")))
        }
    }
}

// Correction Exercice 5 : Utiliser des listes
struct Exercice5: View {
    let fruits = ["Pomme", "Banane", "Cerise"]

    var body: some View {
        List(fruits, id: \.self) { fruit in
            Text(fruit)
        }
    }
}

// Correction Exercice 6 : Utiliser des états
struct Exercice6: View {
    @State private var texte = "Texte initial"

    var body: some View {
        VStack {
            Text(texte)
            Button("Changer le texte") {
                texte = "Texte changé"
            }
        }
    }
}

// Correction Exercice 7 : Utiliser des navigations
struct Exercice7: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Text("Vue 1")) {
                    Text("Lien 1")
                }
                NavigationLink(destination: Text("Vue 2")) {
                    Text("Lien 2")
                }
            }
            .navigationTitle("Navigation")
        }
    }
}

// Correction Exercice 8 : Utiliser des formulaires
struct Exercice8: View {
    @State private var nom = ""

    var body: some View {
        Form {
            TextField("Entrez votre nom", text: $nom)
            Button("Soumettre") {
                print("Nom soumis : \(nom)")
            }
        }
    }
}

// Correction Exercice 9 : Utiliser des onglets
struct Exercice9: View {
    var body: some View {
        TabView {
            Text("Onglet 1")
                .tabItem {
                    Label("Onglet 1", systemImage: "1.circle")
                }
            Text("Onglet 2")
                .tabItem {
                    Label("Onglet 2", systemImage: "2.circle")
                }
        }
    }
}

// Correction Exercice 10 : Utiliser des feuilles (Sheets)
struct Exercice10: View {
    @State private var showingSheet = false

    var body: some View {
        Button("Afficher la feuille") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            Text("Feuille modale")
        }
    }
}

// Affichez une des vues de correction
PlaygroundPage.current.setLiveView(Exercice9())
