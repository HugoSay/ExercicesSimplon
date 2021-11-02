//
//  NavigationExemple.swift
//  SimplonExo
//
//  Created by Hugo Saynac on 02/11/2021.
//

import SwiftUI

struct NavigationExemple: View {
    var body: some View {
        List {
            // exemple simple, avec juste un titre et une destination
            NavigationLink("Exercice Array") {
                ExoArrays()
            }
            
            // exemple avec un label custom et une destination
            NavigationLink(destination: {
                ExoIfElseAvance()
            }, label: {
                // permet de customiser la vue du lien
                Text("Exo if else avancé")
                    .foregroundColor(.blue)
            })
            
            // autre manière de déclarer un lien
            NavigationLink(destination: ExoIfElse()) {
                Text("Exo If else").foregroundColor(.red)
            }
            
            // Encore une écriture possible
            NavigationLink {
                // destination
                ExoButtons()
            } label: {
                Text("Exo buttons").foregroundColor(.green)
            }
        }   .navigationTitle("Navigation")
    }
}

struct NavigationExemple_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            NavigationExemple()
        }
    }
}
